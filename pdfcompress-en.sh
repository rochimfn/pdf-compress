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
echo -e $red "writed by Rochim farul noviyan"
echo -e $red "powered by Ghostscript"
echo -e 
echo -e $green2
read -p 'Enter the name of the pdf you want to compress (ex:in.pdf) = ' input
read -p 'Enter the name of the pdf compression result (misal:out.pdf) = ' output
echo -e $green1"Choose the quality"
echo -e $green1"			1)Very good (very big size)"
echo -e $green1"			2)Good (big size)"
echo -e $green1"			3)Good enough (mid size)"
echo -e $green1"			4)Bad (low size)"
echo -e $green1"			5)Very bad buruk (very low size)"
echo -e $green2
read -p "Choose (1-5) = " kual

if [ $kual -eq 1 ];
then
	echo -e $red"Please wait ..."
	ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 2 ];
then
	echo -e $red"Please wait ..."
	ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 3 ];
then
	echo -e $red"Please wait ..."
        ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 4 ];
then
	echo -e $red"Please wait ..."
        ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
elif [ $kual -eq 5 ];
then
	echo -e $red"Please wait ..."
        ghostscript -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$output $input
else
	echo -e $red"Choose between 1-5";
	exit 1
fi
echo -e $green1"Compression is complete"
du -sh $output