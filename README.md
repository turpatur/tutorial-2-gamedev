### Apa saja pesan log yang dicetak pada panel Output?
### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
### Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
Program mencetak string "Reached Objective" ketika `BlueShip` menyentuh `ObjectiveArea`. Hal ini disebabkan oleh signal `_on_ObjectiveArea_body_entered` yang diaktifkan ketika *body* bernama `BlueShip` memasuki `ObjectiveArea`. Hal ini sesuai dari docs Godot, yaitu pada signal `body_entered` yang akan aktif ketika ada *body* yang masuk ke area tersebut. 

---

### Scene BlueShip dan StonePlatform sama-sama memiliki sebuah *child node* bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?
Pada deskripsi docs Godot, `Sprite2D` adalah node yang menampilkan tekstur 2 dimensi. Dengan adanya tekstur 2 dimensi ini, gambar atau representasi visual berupa *sprite* dapat ditampilkan melalui node ini. 

---

### Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
`RigidBody2D` adalah node yang mengimplementasikan *physics* 2 dimensi. Pada node ini, gaya perlu diterapkan, seperti gravitasi dan juga impuls. Akibat dari hal ini adalah simulasi *physics* pada Godot akan mengkalkulasikan hasil dari gaya yang diterapkan, seperti arah gerakan dan rotasi. `StaticBody2D` berbeda dengan *physics body* lainnya karena tidak bergerak oleh *physics engine* Godot. `StaticBody2D` berpartisipasi pada deteksi *collision*, tetapi tidak bergerak akibat *collision* tersebut. 

---

### Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Tidak ada perbedaan yang signifikan karena massa tidak berpengaruh pada percepatan jatuh. Jadi, ketika platform naik, lalu turun lagi dan membuat pesawat jatuh, percepatan jatuhnya sama saja. Justru, gravitasi yang berpengaruh pada percepatan jatuhnya pesawat. Jadi, kalau ingin mempercepat laju jatuhnya pesawat, perlu mengubah nilai gravitasinya. 

---

### Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
Pesawat akan tembus `StonePlatform` karena *collision shape* yang telah di-*disable* tidak akan mempengaruhi apapun, termasuk objek lain. 

---

### Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
* **Position** menentukan letak objek terhadap *parent*:
    * **X (+)**: Objek akan bergerak ke kanan.
    * **X (-)**: Objek akan bergerak ke kiri.
    * **Y (+)**: Objek akan bergerak ke bawah.
    * **Y (-)**: Objek akan bergerak ke atas.
* **Rotation** mengubah orientasi objek terhadap titik pivot (*origin node*):
    * **Rotation (+)**: Objek berputar searah jarum jam.
    * **Rotation (-)**: Objek berputar melawan arah jarum jam.
* **Scale** mengubah ukuran objek terhadap ukuran aslinya:
    * **> 1**: Memperbesar objek.
    * **0 – 1**: Mengecilkan objek.
    * **< 0**: Objek akan terbalik (*flipped*).

---

### Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
*Position child node* relatif ke *parent node* karena adanya hierarki pada objek. Posisinya benar secara visual karena pada Godot, *parent* akan diposisikan terlebih dahulu, kemudian posisi *child* akan dihitung relatif pada *parent*, dan hasil akhirnya adalah posisi global yang benar di *viewport*.
