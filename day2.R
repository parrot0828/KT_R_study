#day 2
#데이터 유형확인방법
a<-10:20
b;
as.logical(b); b = FALSE;
b <- is.integer(a); class(b)

#형변환 
y <- c(1,2,3,"a"); y 
class(y); # 문자형 앞의 1,2,3이 문자로 변경 

y <- c(1,2,3,TRUE); y
class(y); # 정수형 마지막 TRUE가 1로 변환됨 

y <- c("a",TRUE); y
class(y); # 문자형  TRUE가 문자로 변환됨 

x<-1:5;
class(x);
y <- class(as.character(x)); #문자형으로 변환하였으니깐

#데이터 구조

x <- 1:3;x
x1 <- c(1,2,3); x1

#길이 계산은 length()를 사용해주자
#name(x)는 원소의 이름을 출력 또는 이름 할당
#vector[] -> 벡터내 특정 수, 조건을 만족하는 원소 추출 및 제거

vector_a <- c(96,80,76,96,88,75,78,89,92,70); #vector_a 할당해줌 
length(vector_a);
va1 <- vector_a[1]; #첫번째 행의 값을 출력
va2 <- vector_a[-1]; #첫번째 행의 값을 뺀 나머지 출력 
va3 <-vector_a[vector_a >=90]; #90이상인 값들 출력 

#matrix구조 
#2x2 행렬 생성 
matrix_a <-matrix(1:4,nrow=2,ncol=2,dimnames=list(c("Row1","Row2"),c("Column1","Column2")));
matrix_a;
dim(matrix_a); #행 열 출력 
dimnames(matrix_a); #matrix 행 / 열 이름 출력 
#cbind - col단위로 합침 
#rbind - row 단위로 합침
matrix_a[1,2];


#########################
#데이터 프레임 구조
dataframe_a <-data.frame(id=c("1","2","3","4","5"),math = c(100,90,50,80,70), korea = c(90,100,80,90,50));
dataframe_a;
dim(dataframe_a);#몇행 몇열인지 출력
names(dataframe_a);#이름 출력 
str(dataframe_a);#structure 구조 확인
dataframe_a[1,]; #1열 출력
dataframe_a$math; # $를 통해 변수 지정 가능 math만 출력하라 

vec1 <- c("Yes","No","No","No");

f1 <- factor(vec1);f1;
f2 <- factor(vec1, levels=c("Yes","No"));f2

vec2 <- c(1,3,5,4,2,1,4,5);
f3 <- factor(vec2); f3
f3 <- factor(vec2, ordered = TRUE);f3;
levels(f3); nlevels(f3)
