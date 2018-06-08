clear all;
% im1=imread('band4_new.gif');
%  im2=imread('band3_new.gif');
%  im3=imread('band2_new.gif');


%% Image reading and data formatting
cc=imread('testn.jpg');
% cc(:,:,1)=im1(:,:,1);
% cc(:,:,2)=im2(:,:,1);
% cc(:,:,3)=im3(:,:,1);

temp=size(cc);
siz=temp(1)*temp(2);
x=double(reshape(cc,siz,3));
%%
%%Select cluster centers randomly
% clust=input('Enter number of clusters ') ;
% m=input('Enter value of fuzziness coefficient ');
% ths=input('Enter threshold value ');
% iterations=input('Enter no. of interations ');
u=rand(siz,clust);


for i=1:siz
    u(i,:)=u(i,:)./sum(u(i,:));
end
% c_temp = unique(x,'rows');
% k = randperm(size(c_temp,1));
% c = c_temp(k(1:20),:);

for j=1:clust
     %c(j,:)= (sum((u(:,j).^m).*x))/(sum((u(:,j).^m)));
     c(j,:)= sum(bsxfun(@times,u(:,j).^m , x),1)/(sum((u(:,j).^m)));
 end
%c = reshape(mnew,3,12,7,4);
%%
%%Algo running

h=1;
while(1)
   if(h<iterations)
    u2=u;
 for i=1:siz
     for j=1:clust
         d(i,j)=norm(x(i,:)-c(j,:));
         s=sqrt(sum((x(i,:)-c).^2,2));
         temp2=sum((d(i,j)./s).^(2/(m-1)));
         u(i,j)=1/temp2;
     end
 end

 delu=abs(u-u2);
 max_del=max(max(delu));
 
 if max_del<ths
     break;
 end 
 for j=1:clust
     %c(j,:)= (sum((u(:,j).^m).*x))/(sum((u(:,j).^m)));
     c(j,:)= sum(bsxfun(@times,u(:,j).^m , x),1)/(sum((u(:,j).^m)));
 end
 
   else
       break;
   end
 h=h+1;
 end

 %%
 %%Assigning clusters based on fuzzy matrix
 for i=1:siz
     [mx,fc2(i)]=max(u(i,:));
 end
 
 %fc=reshape(fc,116,90);
 s = ones(size(x,1), 1) * 20;
 s2 = ones(size(c,1), 1) * 20;
 c2 = fc2(:);
 fc2_n=reshape(fc2,temp(1),temp(2));
 scatter3(x(:,1),x(:,2),x(:,3),s,c2);
 colorbar;
 hold on;
 scatter3(c(:,1),c(:,2),c(:,3),s2*5,'filled','x');
 hold off;
 
%%

 %%Clustering Statistics
 clust_data=cell(clust,1);
 clust_n=1;
for i=1:clust
    if find(fc2_n==i)
    ind=find(fc2_n==i);
    clust_data{i}=x(ind,:);
    corel=corr(clust_data{i});
    
  fprintf("The correlation matrix for cluster %d\n is ",clust_n);
  disp(corel)
  clust_n=clust_n+1;
    end
end
RGB = label2rgb(fc2_n);
figure;
imshowpair(cc, RGB, 'montage');
suptitle(['Value of m: ' num2str(m) '  ' 'Error covergence value: ' num2str(ths) '  ' 'Input Clusters: ' num2str(clust) '  ' 'Final Clusters: ' num2str(clust_n-1)])
%title('Top title');
text(80, 250, 'Input Image                                                                                                                              Clustered Image');

 %%   
  