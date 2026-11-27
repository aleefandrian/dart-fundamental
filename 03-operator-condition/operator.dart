void main() {
int nilaiUjian = 82;
int kehadiran = 85;
bool bebasTunggakan = true;
bool lulusUjian = (nilaiUjian >= 75) && (kehadiran >= 80) && bebasTunggakan;
bool dapatRemedial = (nilaiUjian < 75) || (kehadiran < 80);
print('Status Lulus: $lulusUjian | Wajib Remedial: $dapatRemedial');
}