program Mod1;
uses crt;
type karyawan = record
        nama : string;
        jml_lembur, gol : integer;
        gaji_pokok,bonus_tetap,bonus_lembur,gaji_bulan,gaji_total : real;
        end;
var
        a    : karyawan;
        menu : integer;

begin
        clrscr;
        writeln('----------menu pilihan-------------');
        writeln('===================================');
        writeln('| 1 |    Gaji Karyawan            |');
        writeln('| 2 |        keluar               |');
        writeln('===================================');
        writeln;
        repeat
        writeln('Masukkan Pilihan : ');readln(menu);
        case menu of
        1 : begin
                write('Masukkan Nama Karyawan     :  ');Readln(a.nama);
                writeln('Golongan Karyawan : ');
                writeln('       1. Golongan I ');
                writeln('       2. Golongan II ');
                writeln('       3. Golongan III ');
                writeln;
                write('Masukkan Golongan Karyawan : ');readln(a.gol);
                write('Masukkan Jumlah Lembur     : ');readln(a.jml_lembur);
                case a.gol of
                        1 : begin
                                a.gaji_pokok := 250000;
                                end;
                        2 : begin
                                a.gaji_pokok := 500000;
                                end;
                        3 : begin
                                a.gaji_pokok := 750000;
                                end;
                                end;
                        a.bonus_tetap  := 0.25 * a.gaji_pokok;
                        a.bonus_lembur := a.jml_lembur*a.bonus_tetap;
                        a.gaji_bulan   := a.gaji_pokok + a.bonus_tetap + a.bonus_lembur;
                        writeln('----------- Jumlah Gaji ------------');
                        writeln('Nama Karyawan          : ',a.nama);
                        writeln('Golongan Karyawan      : ',a.gol);
                        writeln('Jumlah lembur          : ',a.jml_lembur);
                        writeln('Total Gaji             : Rp.',a.gaji_bulan:0:0);
                        end;
                        end;
                readln;
                until menu = 2
end.