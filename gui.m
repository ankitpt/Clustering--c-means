function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 16-Apr-2018 15:23:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clust=str2num(get(handles.edit11,'String')) ;
m=str2num(get(handles.edit2,'String'));
ths=str2num(get(handles.edit3,'String'));
iterations=str2num(get(handles.edit4,'String'));


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
 figure;
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[File ,Path]=uigetfile('*.jpg','All Files');
name=strcat(Path,File);
cc=imread(name);
%set(handles.edit1,'string',name);
axes(handles.axes1);
imshow(cc);
