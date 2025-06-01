# Online Sınav Sitesi

## Tanıtım
Bu proje, PHP ve MySQL veritabanı kullanılarak geliştirilmiş bir online sınav sistemidir.
Frontend kısmında HTML ve CSS kullanılmış, sınav ekranındaki süre ve hesaplama işlemleri ise JavaScript ile gerçekleştirilmiştir.
Ayrıca, Bootstrap ve FontAwesome gibi hazır kütüphaneler sayesinde arayüz görsel olarak zenginleştirilmiştir.
Proje klasöründeki database.sql dosyasını phpMyAdmin veya MySQL komut satırı üzerinden içe aktararak gerekli tabloları oluşturabilirsiniz.
connection.php dosyasını açarak aşağıdaki alanları kendi bilgilerinize göre düzenlemeniz gerekir:

- $servername = "localhost";       // Sunucu adı
- $username = "root";              // Veritabanı kullanıcı adı
- $password = "";                  // Veritabanı şifresi
- $dbname = "sinav_sistemi";       // Kullanacağınız veritabanı adı



## Proje'nin 3 Paneli Bulunmaktadır

### Ana Sayfa Paneli
- Site hakkında kısa bir tanıtım, iletişim ve hakkımızda bölümleri içerir.
- Kullanıcı giriş bağlantıları bu sayfada yer alır.

### Öğretmen Paneli
- Soru ekleme, silme ve düzenleme işlemleri yapılabilir.
- Öğrencilerin doğru–yanlış istatistikleri görüntülenebilir.
- Öğrenci kayıtlarını silme yetkisi bulunur.

### Öğrenci Paneli
- Öğrenciler, istedikleri kitaplık/kategori üzerinden soruları seçip sepete ekleyerek kendi sınavlarını oluşturabilirler.
- Sınav sonunda sistem, doğru ve yanlış sayısını ve puanı otomatik olarak hesaplar ve gösterir.


## Proje Hakkında Not
Bu proje, var olan bir online soru çözme platformunun geliştirilmesiyle oluşturulmuştur.
Mevcut sistem, kullanıcıların yalnızca soru çözmesine olanak tanıyan basit bir 
yapıdayken; bu proje kapsamında sistemin temasında ve işlevlerinde çeşitli 
geliştirmeler yapılmıştır. Arayüz tasarımı sınav sistemlerine uygun olacak şekilde
sadeleştirilmiş ve daha profesyonel bir görünüme kavuşturulmuştur.

Bununla birlikte, projeye bir puan hesaplama aracı eklenmiş ve sistem, kullanıcıların 
çözdükleri sorulara göre puanlarının otomatik olarak hesaplanabileceği bir yapıya 
dönüştürülmüştür. Böylece uygulama sadece bir soru çözme platformu olmaktan çıkıp, 
sınav mantığına uygun, sonuç odaklı bir sisteme dönüşmüştür.


### <a name="images">Görseller</a>

<p align="left">
<img src="https://i.imgur.com/NkcbqLD.png">
<img src="https://i.imgur.com/zRvvKMh.png">
<img src="https://i.imgur.com/f9rXpq2.png">
<img src="https://i.imgur.com/4FzKsHe.png">
<img src="https://i.imgur.com/cf6ZSPF.png">  
</p>



## Lisans
- Licensed under the terms of the [GNU GENERAL PUBLIC LICENSE] https://github.com/emhyripek/onlinesinavsistemi/blob/main/LICENSE






