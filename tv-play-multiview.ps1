# Script PowerShell para ejecutar el comando ffmpeg
# Definir fuentes de video de ejemplo
$streams = @(
    # Videos de ejemplo de Google (Big Buck Bunny y otros)
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8",
    "https://ztnr.rtve.es/ztnr/1694255.m3u8"
)

$inputsString = ""
foreach ($stream in $streams) {
    $inputsString += "-i `"$stream`" "
}

# Calcular las dimensiones para mantener el tamaño original y asegurar que ocupen el 100% del ancho
# Para 4 columnas en 1920px, cada video debe tener 480px de ancho
# El alto se mantendrá proporcional (no escalado)

# Construir la parte del filtro_complex para una disposición de 4×3 (4 filas, 3 columnas)
# Para 3 columnas en 1920px, cada video debe tener 640px de ancho (1920÷3)
$filterComplexString = @"
nullsrc=size=1920x1080 [base]; 
[0:v] setpts=PTS-STARTPTS, scale=640:-1 [v0]; 
[1:v] setpts=PTS-STARTPTS, scale=640:-1 [v1]; 
[2:v] setpts=PTS-STARTPTS, scale=640:-1 [v2]; 
[3:v] setpts=PTS-STARTPTS, scale=640:-1 [v3]; 
[4:v] setpts=PTS-STARTPTS, scale=640:-1 [v4]; 
[5:v] setpts=PTS-STARTPTS, scale=640:-1 [v5]; 
[6:v] setpts=PTS-STARTPTS, scale=640:-1 [v6]; 
[7:v] setpts=PTS-STARTPTS, scale=640:-1 [v7]; 
[8:v] setpts=PTS-STARTPTS, scale=640:-1 [v8]; 
[9:v] setpts=PTS-STARTPTS, scale=640:-1 [v9]; 
[10:v] setpts=PTS-STARTPTS, scale=640:-1 [v10]; 
[11:v] setpts=PTS-STARTPTS, scale=640:-1 [v11]; 
[base][v0] overlay=0:0 [tmp0]; 
[tmp0][v1] overlay=640:0 [tmp1]; 
[tmp1][v2] overlay=1280:0 [tmp2]; 
[tmp2][v3] overlay=0:270 [tmp3]; 
[tmp3][v4] overlay=640:270 [tmp4]; 
[tmp4][v5] overlay=1280:270 [tmp5]; 
[tmp5][v6] overlay=0:540 [tmp6]; 
[tmp6][v7] overlay=640:540 [tmp7]; 
[tmp7][v8] overlay=1280:540 [tmp8]; 
[tmp8][v9] overlay=0:810 [tmp9]; 
[tmp9][v10] overlay=640:810 [tmp10]; 
[tmp10][v11] overlay=1280:810
"@

# Usaremos el enfoque de overlays individuales con proporción original en grid 4×3
$ffmpegCommand = "ffmpeg $inputsString -filter_complex `"$filterComplexString`" -map `"0:v`" -c:v mpeg4 -q:v 3 -f avi - | ffplay -window_title `"Grid TV - 12 Canales (4×3)`" -x 1920 -y 1080 -"

# Verificar la instalación de reproductores de video
$hasFFplay = $null -ne (Get-Command ffplay -ErrorAction SilentlyContinue)
$hasVLC = Test-Path "C:\Program Files\VideoLAN\VLC\vlc.exe"
$hasMPV = $null -ne (Get-Command mpv -ErrorAction SilentlyContinue)

# Configurar el comando según los reproductores disponibles
if ($hasFFplay) {
    Write-Host "Usando FFplay para visualización en tiempo real..."
    $streamCommand = $ffmpegCommand
}
elseif ($hasVLC) {
    Write-Host "Usando VLC para visualización en tiempo real..."
    $streamCommand = $ffmpegCommand.Replace("ffplay -window_title", "`"C:\Program Files\VideoLAN\VLC\vlc.exe`" --network-caching=1000 --video-title")
}
elseif ($hasMPV) {
    Write-Host "Usando MPV para visualización en tiempo real..."
    $streamCommand = $ffmpegCommand.Replace("ffplay -window_title", "mpv --title")
}
else {
    Write-Host "No se encontró ningún reproductor compatible (ffplay, VLC o MPV)."
    Write-Host "Guardando la salida en un archivo en su lugar..."
    $streamCommand = $ffmpegCommand.Replace('| ffplay -window_title "Grid TV - 12 Canales (4×3)" -x 1920 -y 1080 -', ' output.mkv')
}

Write-Host "Iniciando la visualización de la cuadrícula de canales en vivo..."
Write-Host "Presiona Ctrl+C si necesitas detener la transmisión."
Invoke-Expression $streamCommand
Write-Host "Transmisión finalizada."
