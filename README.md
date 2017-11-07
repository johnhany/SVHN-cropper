# SVHN-cropper

A Matlab snippet for cropping sample images in the **[Street View House Numbers (SVHN) Dataset](http://ufldl.stanford.edu/housenumbers/)**, which is obtained from house numbers in Google Street View images.

## Usage

1. Download [train.tar.gz](http://ufldl.stanford.edu/housenumbers/train.tar.gz) and [test.tar.gz](http://ufldl.stanford.edu/housenumbers/test.tar.gz) from SVHN official site.
2. Copy all image files in `train` and `test` directories of the downloaded dataset to `SVHN-cropper/train` and `SVHN-cropper/test` separately.
3. Open Matlab. Run `crop_train.m` and `crop_test.m`.
4. All digit images will be placed in `SVHN-cropper/train_crop` and `SVHN-cropper/test_crop`, within their corresponding subfolders.

## Warnings

Note that the following samples might not be cropped successfully, due to "`Index exceeds matrix dimensions`" failure:

- In `train`: #2888, #13750, #19467, #25052, #32898.
- In `test`: #174, #4381.

## Results

Number of samples in each class (digits 0, 1, ... , 9):

| Class | Train set | Test set |
| ----- | --------- | -------- |
| 0     | 4948      | 1743     |
| 1     | 13861     | 5099     |
| 2     | 10583     | 4149     |
| 3     | 8497      | 2882     |
| 4     | 7458      | 2522     |
| 5     | 6881      | 2384     |
| 6     | 5726      | 1977     |
| 7     | 5595      | 2019     |
| 8     | 5044      | 1660     |
| 9     | 4659      | 1595     |

##  License

Copyrights of the SVHN dataset belongs to the original team at [http://ufldl.stanford.edu/housenumbers/](http://ufldl.stanford.edu/housenumbers/).

If you want to cite this dataset in your work, use

> Yuval Netzer, Tao Wang, Adam Coates, Alessandro Bissacco, Bo Wu, Andrew Y. Ng Reading Digits in Natural Images with Unsupervised Feature Learning *NIPS Workshop on Deep Learning and Unsupervised Feature Learning 2011*.

