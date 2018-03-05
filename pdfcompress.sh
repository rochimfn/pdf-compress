green1='\033[92m'
green2='\e[1;32m'
red='\e[1;31m'
yellow='\e[1;33m'
echo -e $yellow "####################################################"
echo -e $yellow "#      //////   || //         /////////            #"
echo -e $yellow "#      //   //  ||  //       //                    #"
echo -e $yellow "#      //   //  ||   //     //                     #"
echo -e $yellow "#      //  //   ||    //   ////////                #"
echo -e $yellow "#      // //    ||   //   //                       #"
echo -e $yellow "#      //       ||  //   //                        #"
echo -e $yellow "#      //       || //   //                         #"
echo -e $yellow "#      //       ||//   //       ||||Kompress||||   #"
echo -e $yellow "####################################################"
echo -e $red "ditulis Rochim farul noviyan"
echo -e $red "didukung oleh Ghostscript"
echo -e 
echo -e $green2
read -p 'Masukkan nama pdf yang akan kamu kompress (misal:namamasuk.pdf) = ' input
read -p 'Masukkan nama pdf hasil kompressan (misal:hasilkompress.pdf) = ' output
echo -e $green1"Pilih kualitas kompressan yang kamu inginkan"
echo -e $green1"			1)Sangat baik(ukuran sangat besar)"
echo -e $green1"			2)Baik (ukuran besar)"
echo -e $green1"			3)Cukup (ukuran sedang)"
echo -e $green1"			4)Buruk (ukuran kecil)"
echo -e $green1"			5)Sangat buruk (ukuran sangat kecil)"
echo -e $green2
read -p "Pilih (1-5) = " kual


if [ $kual -eq 1 ];
then
	echo -e $red"Tunggu sebentar ..."
	ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 2 ];
then
	echo -e $red"Tunggu sebentar ..."
	ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 3 ];
then
	echo -e $red"Tunggu sebentar ..."
        ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 4 ];
then
	echo -e $red"Tunggu sebentar ..."
        ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 5 ];
then
	echo -e $red"Tunggu sebentar ..."
        ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
else
	echo -e $red"Pilihlah antara 1 sampai 5";
	exit 1
fi
echo -e $yellow"Kompresi selesai"
du -sh $output