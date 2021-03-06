# Sample code of Bazarwatch
This is repository was designed to showcase code samples written by Bazarwatch

**Bazarwatch** is a project on doing health-related data journalism in Bangladesh. It is led by a team of two - a data reporter, Zyma Islam and a data engineer, Syed bin Amir. We also receive organizational support (non-financial) from *Dhaka Tribune*, a daily newspaper in Bangladesh. 

The healthcare system in Bangladesh is broken down at a production and supply-chain level. One example is that, through our investigations we found storage conditions not being maintained for important life-saving drugs thereby denaturing them. Our fresh food is usually laced with formalin and there has been no survey to see how it affects public health. We go to locations where such violations are taking place and collect information that gives us an idea about the scale of the problem we are dealing with e.g. going to blood banks convicted of selling untested blood and getting records of how many people they affected. 

*Apart from us, there is no such data collection going on either on a state-level or through private initiatives*

Right now we are turning our several months-long data collection into investigative reports to be published with *Dhaka Tribune*. 

**What's in this repo:**

Three samples of the kind of analysis we are doing. They are all being used in the production of investigative reports

* `ocr.py` is an example script that extracts Bengali text from pdf files with Bengali characters in it. Scripts like these are largely our main analytical tools. We rarely, if ever find digital data when doing data collection - we mostly have to rely on scanned images, pdfs, word documents. They are also in Bengali. 
  
  `ocr.py` is powered by Tesseract. Tesseract is one of the only optical character recognition (OCR) packages available that can be used to recognize Bengali characters from images. 
  
  `tesstest.pdf` is a pdf file of a sales invoice collected from a pharmaceutical factory raided for massive violations. By analyzing the invoices we can find out who the affected populations are. It is not usually possible to do this manually because one company can have thousands of invoices. That is where this code comes in handy. The output file is included in the repo and named `out.txt`

* `preprocess.r` is a code used to analyze a dataset on fake health certificates being handed out to migrant workers from Bangladesh. The law enforcers raided several hospitals dedicated to running diagnostic tests for migrant workers and providing them with health certification. Upon investigation it was found that the diagnostic centers were not equipped with equipment or personnel to do the tests, and many were using expried diagnostic reagents. These tests included communicable diseases like AIDS, TB, malaria. We collected data about how many people they sent out in such a way, and to which countries over how much time. This was an attempt to understand how diseases spread globally. 

  `preprocess.r` was written in R 3.3.2 

* `searchable-db.md` is a sample post with real data. We aim to turn all of our data into a searchable database and release it to the general public so as to bring public awareness and help consumers make better choices about their health. The database will continuously publish alerts for updates in the form of posts such the sample in this file. 



