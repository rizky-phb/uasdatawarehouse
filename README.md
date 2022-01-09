# uasdatawarehouse
rumus :<br>
<code>Y = a0 +bx</code><br>
<code>a = (SY) / n</code><br>
<code>b = (SYx) / Sx2</code><br>

dengan :

    Y     = data berkala (time series) = taksiran nilai trend.

    a0     = nilai trend pada tahun dasar.

    b     = rata-rata pertumbuhan nilai trend tiap tahun.

    x     = variabel waktu (hari, minggu, bulan atau tahun).
untuk menjalankan aplikasi ubah terlebih dahulu value dari <br>
<code>$config['base_url'] = "http://localhost:8080/uasdatawarehouse";</code> menyesuakan url kalian <br>
jadi database uts saya ada tambahan yaitu tabel login_ untuk login ke aplikasi ,<br>
lalu tabel excell dari tabel disebut di ekstrak sebagai csv dan diimput ke dalam aplikasi <br>
