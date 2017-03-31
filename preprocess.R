#extract filenames from dataset of csv
filenames= list.files(pattern=".csv");
#number of files - 446
L=length(filenames);
#Create variables for country names and total number of patients
xx=c();
nums=c();

for (i in 1:L){
  #outfilename=paste("out",filenames[i]);
  #read entire file into R variable
  all_content = readLines(filenames[i]);
  #Remove header line
  skip_first = all_content[-1];
  # Build data frame from previous step
  data = read.csv(textConnection(skip_first),header = TRUE,stringsAsFactors = FALSE);
  # Find number of columns, extract country names
  Ncolumns = ncol(data)
  columns= colnames(data);
  # Unlist data from
  output = matrix(unlist(data),ncol = Ncolumns);
  # Convert to double to obtain just the numbers for each country
  output = matrix(as.double(output), ncol = Ncolumns);
  # extract single row with country totals
  output = output[rowSums(is.na(output))!=Ncolumns,];
  idx=!is.na(output);
  # Extract final data of country names with corresponding applicant number
  columns=columns[idx]; output=output[idx];
  final= rbind(columns,output);
  # Bind to other file outputs
  xx=c(xx,columns);
  nums=c(nums,output);
}
#Extract unique names
xxx=unique(xx);
#Export as RData for further processing
save(xx,file = "countries.RData");
save(nums, file = "numbers.RData");
save(xxx,file = "xxx.RData");