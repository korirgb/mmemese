////////////////////////////////////////////////////////////////////////////////////////////////
//
//  AutoLuminous Ver.4.2
//  �쐬: ���ڂ�
//
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
// ���[�U�[�p�����[�^

#ifdef MIKUMIKUMOVING

int Glare <
   string UIName = "Glare";
   string UIWidget = "Slider";
   string UIHelp = "��䊂̐����w�肵�܂��B";
   bool UIVisible =  true;
   int UIMin = 0;
   int UIMax = 6;
> = 0;

#endif

//MMM�p�O���A�p�x
float GlareAngle2 <
   string UIName = "GlareAngle";
   string UIWidget = "Slider";
   string UIHelp = "��䊊p�x";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 180;
> = 0.0;

//MMM�p�O���A����
float GlareLength <
   string UIName = "GlareLength";
   string UIWidget = "Slider";
   string UIHelp = "��䊒���";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 2.0;
> = 1.0;


//MMM�p�������x
float Power2 <
   string UIName = "LightPower";
   string UIWidget = "Slider";
   string UIHelp = "�������x";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 20;
> = 1.0;

// �ڂ����͈�
float AL_Extent <
   string UIName = "AL_Extent";
   string UIWidget = "Slider";
   string UIHelp = "�����ڂ����͈�";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 0.2;
> = 0.07;


//�O���A���x�@1.0�O��
float GlarePower <
   string UIName = "GlarePower";
   string UIWidget = "Slider";
   string UIHelp = "�O���A���x";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 3;
> = 1.2;

//����ьW���@0�`1
float OverExposureRatio <
   string UIName = "OverExposure";
   string UIWidget = "Slider";
   string UIHelp = "����ьW��";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 3;
> = 0.85;

//��������@0�`1
float Modest <
   string UIName = "Modest";
   string UIWidget = "Slider";
   string UIHelp = "�ア�������܂�g�U���Ȃ��Ȃ�܂�";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 2.0;
> = 1.0;

#ifdef MIKUMIKUMOVING

float ScreenToneCurve <
   string UIName = "ToneCurve";
   string UIWidget = "Slider";
   string UIHelp = "�g�[���J�[�u�ύX";
   bool UIVisible =  true;
   float UIMin = 0;
   float UIMax = 1;
> = 0;

#endif


//�w�i�F
const float4 BackColor <
   string UIName = "BackColor";
   string UIWidget = "Color";
   string UIHelp = "�w�i�F";
   bool UIVisible =  true;
> = float4( 0, 0, 0, 0 );


//�c�����x�@0�`50���x�@0�Ŗ���
#define AFTERGLOW  0

//������̃T���v�����O��
#define AL_SAMP_NUM   6

//�O���A�̈�����̃T���v�����O��
#define AL_SAMP_NUM2  12


///////////////////////////////////////////////////////////////////////////////////////////////
//�L�[�J���[

//�L�[�J���[�F��臒l
float KeyThreshold = 0.38;

//�L�[�J���[���E0�ŃL�[�J���[����
#define KEYCOLOR_NUM  0 //2

#if KEYCOLOR_NUM!=0
    float3 KeyColors [KEYCOLOR_NUM][3] = {
        //{{�L�[�F},{�R�A�F},{�����F}}, �̂悤�ɕ��ׂ܂�
        //�K�� KEYCOLOR_NUM �Ŏw�肵�����������ׂ܂�(0������)
        {{1, 0, 1}, {0.2, 0.2, 0.1}, {0.8, 0.5, 0.3}},
        {{0, 0, 1}, {1.0, 0.8, 1.0}, {0.2, 0.4, 1.0}},
        
    };
#endif

///////////////////////////////////////////////////////////////////////////////////////////////
//�I�v�V�����X�C�b�`

//�ҏW���̓_�ł��t���[�����ɓ���������
//true���ƃt���[�����ɉ����Č��̋������ω�
//false���ƕҏW�����_�ł������܂�
#define SYNC false

//�������O�}�X�N���g�p����
//MME�^�u�� AL_MaskRT ������܂��B
//�ڂ����g������Readme�㋉�҂ɂāB
#define MASK_ENABLE  0

//�g�[���J�[�u�̓K�p������
//0���I�t�A1���I���ł�
//ToneCurve.x��ǂݍ��ނ̂��ʓ|�ł���΃I���ɂ��܂�
#define SCREEN_TONECURVE  0

//�O���A���P���������������܂�
//0���I�t�A1���I���ł�
//�O���A�̃T���v�����O��������ɉ����đ��₷���Ƃ𐄏�
#define GLARE_LONGONE  0


//�����A���t�@�o�̓��[�h
//MMD��ł̕\���͂��������Ȃ�܂����A�����摜�o�͂Ƃ��Ă�
//�����ɐ������A���t�@�t���f�[�^�������܂�
//0���I�t�A1���I���ł�
#define ALPHA_OUT  0

//MMD��̕`���HDR���Ƃ��Ĉ����܂�
//���邳��1�𒴂��������������Č�����悤�ɂȂ�܂�
//0���I�t�A1���I���ł�
#define HDR_RENDER  1

//��Ɨp�o�b�t�@�̃T�C�Y�𔼕��ɂ��Čy�����܂�
//�掿�͗����܂�
//0���I�t�A1���I���ł�
#define HALF_DRAW  0


//�e�N�X�`���t�H�[�}�b�g
#define AL_TEXFORMAT "D3DFMT_A16B16G16R16F"


////////////////////////////////////////////////////////////////////////////////////

#if HALF_DRAW==0
    #define TEXSIZE1  1
    #define TEXSIZE2  0.5
    #define TEXSIZE3  0.25
    #define TEXSIZE4  0.125
    #define TEXSIZE5  0.0625
    
#else
    #define TEXSIZE1  0.5
    #define TEXSIZE2  0.25
    #define TEXSIZE3  0.125
    #define TEXSIZE4  0.0625
    #define TEXSIZE5  0.03125
    
#endif

///////////////////////////////////////////////////////////////////////////////////////////////
// �����˃I�u�W�F�N�g�`���

texture AL_EmitterRT: OFFSCREENRENDERTARGET <
    string Description = "EmitterDrawRenderTarget for AutoLuminous.fx";
    float2 ViewPortRatio = {TEXSIZE1,TEXSIZE1};
    float4 ClearColor = { 0, 0, 0, 1 };
    float ClearDepth = 1.0;
    bool AntiAlias = true;
    int MipLevels = 0;
    string Format = AL_TEXFORMAT;
    string DefaultEffect = 
        "self = hide;"
        "*Luminous.x = hide;"
        "ToneCurve.x = hide;"
        
        //------------------------------------
        //�Z���N�^�G�t�F�N�g�͂����Ŏw�肵�܂�
        
        
        
        //------------------------------------
        
        //"* = hide;" 
        "* = AL_Object.fxsub;" 
    ;
>;


///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
//����ȍ~�̓G�t�F�N�g�̒m���̂���l�ȊO�͐G��Ȃ�����

sampler EmitterView = sampler_state {
    texture = <AL_EmitterRT>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

////////////////////////////////////////////////////////////////////////////////////////////////
// �}�X�N�`���

#if MASK_ENABLE!=0
    
    texture AL_MaskRT: OFFSCREENRENDERTARGET <
        string Description = "MaskDrawRenderTarget for AutoLuminous.fx";
        float2 ViewPortRatio = {1.0,1.0};
        float4 ClearColor = { 0, 0, 0, 0 };
        float ClearDepth = 1.0;
        bool AntiAlias = true;
        int MipLevels = 1;
        string Format = "D3DFMT_A8";
        string DefaultEffect = 
            "self = hide;"
            "* = hide;" 
        ;
    >;

    sampler MaskView = sampler_state {
        texture = <AL_MaskRT>;
        MinFilter = Linear;
        MagFilter = Linear;
        MipFilter = None;
        AddressU  = Clamp;
        AddressV = Clamp;
    };

#endif

////////////////////////////////////////////////////////////////////////////////////////////////

int AL_LoopIndex = 0;


#define PI 3.14159

float Script : STANDARDSGLOBAL <
    string ScriptOutput = "color";
    string ScriptClass = "scene";
    string ScriptOrder = "postprocess";
> = 0.8;


// �A���t�@�擾
float alpha1 : CONTROLOBJECT < string name = "(self)"; string item = "Tr"; >;

float4x4 matWorld : CONTROLOBJECT < string name = "(self)"; >; 
static float pos_y = matWorld._42;
static float pos_z = matWorld._43;

static float OverLight = (pos_y + 100) / 100;


// �X�P�[���l�擾
float scaling0 : CONTROLOBJECT < string name = "(self)"; >;
static float scaling = scaling0 * 0.1 * (1.0 + pos_z / 100) * Power2;

// X��]
float3 rot : CONTROLOBJECT < string name = "(self)"; string item = "Rxyz"; >;

static float Power3 = scaling * (1.0 + pos_z / 100) * Power2;

//��䊂̐�

#ifndef MIKUMIKUMOVING

float Glare : CONTROLOBJECT < string name = "(self)"; string item = "X"; >;

#endif

//��䊂̒���
static float GlareAspect = (rot.y * 180 / PI + 100) / 100.0 * GlareLength;

//��䊊p�x
static float GlareAngle = rot.x + GlareAngle2 * PI / 180.0;


#ifndef MIKUMIKUMOVING
    #if SCREEN_TONECURVE==0
        bool ScreenToneCurve : CONTROLOBJECT < string name = "ToneCurve.x"; >;
    #else
        bool ScreenToneCurve = true;
    #endif
#endif

//����
float ftime : TIME <bool SyncInEditMode = SYNC;>;

static float timerate = (rot.z > 0) ? ((1 + cos(ftime * 2 * PI / (rot.z / PI * 180))) * 0.4 + 0.2)
                     : ((rot.z < 0) ? (frac(ftime / (-rot.z / PI * 180)) < 0.5) : 1.0);

// �X�N���[���T�C�Y
float2 ViewportSize : VIEWPORTPIXELSIZE;
static float ViewportAspect = ViewportSize.x / ViewportSize.y;
static float2 ViewportOffset = (float2(0.5,0.5)/ViewportSize);
static float2 OnePx = (float2(1,1)/ViewportSize);

//static float2 AL_SampStep = (float2(AL_Extent,AL_Extent) / ViewportSize * ViewportSize.y);
static float2 AL_SampStep = (AL_Extent * float2(1/ViewportAspect, 1));
static float2 AL_SampStepScaled = AL_SampStep * alpha1 / (float)AL_SAMP_NUM * 0.08;

static float AL_SampStep2 = AL_Extent * alpha1 / (float)AL_SAMP_NUM2 * GlareAspect;



bool ExternLightSampling : CONTROLOBJECT < string name = "LightSampling.x"; >;


bool TestMode : CONTROLOBJECT < string name = "AL_Test.x"; >;
float TestValue : CONTROLOBJECT < string name = "AL_Test.x"; >;



////////////////////////////////////////////////////////////////////////////////////
// �[�x�o�b�t�@
texture2D DepthBuffer : RENDERDEPTHSTENCILTARGET <
    float2 ViewPortRatio = {TEXSIZE1,TEXSIZE1};
    string Format = "D24S8";
>;
texture2D DepthBuffer2 : RENDERDEPTHSTENCILTARGET <
    float2 ViewPortRatio = {TEXSIZE2,TEXSIZE2};
    string Format = "D24S8";
>;
texture2D DepthBuffer3 : RENDERDEPTHSTENCILTARGET <
    float2 ViewPortRatio = {TEXSIZE3,TEXSIZE3};
    string Format = "D24S8";
>;
texture2D DepthBuffer4 : RENDERDEPTHSTENCILTARGET <
    float2 ViewPortRatio = {TEXSIZE4,TEXSIZE4};
    string Format = "D24S8";
>;
texture2D DepthBuffer5 : RENDERDEPTHSTENCILTARGET <
    float2 ViewPortRatio = {TEXSIZE5,TEXSIZE5};
    string Format = "D24S8";
>;

///////////////////////////////////////////////////////////////////////////////////////////////

// �I���W�i���̕`�挋�ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMap : RENDERCOLORTARGET <
    float2 ViewPortRatio = {1.0,1.0};
    int MipLevels = 1;
    #if HDR_RENDER==0
        string Format = "A8R8G8B8" ;
    #else
        string Format = AL_TEXFORMAT ;
    #endif
>;
sampler2D ScnSamp = sampler_state {
    texture = <ScnMap>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = None;
    AddressU  = CLAMP;
    AddressV = CLAMP;
};

// ���P�x�������L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D HighLight : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE1,TEXSIZE1};
    int MipLevels = 0;
    string Format = AL_TEXFORMAT ;
    
>;
sampler2D HighLightView = sampler_state {
    texture = <HighLight>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Border;
    AddressV = Border;
};

// �O�����獂�P�x�������擾���邽�߂̃����_�[�^�[�Q�b�g
shared texture2D ExternalHighLight : RENDERCOLORTARGET <
    float2 ViewPortRatio = {1.0,1.0};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
    
>;
sampler2D ExternalHighLightView = sampler_state {
    texture = <ExternalHighLight>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = NONE;
    AddressU  = Border;
    AddressV = Border;
};

// X�����̂ڂ������ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapX : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE1,TEXSIZE1};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampX = sampler_state {
    texture = <ScnMapX>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// �o�͌��ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapOut : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE1,TEXSIZE1};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampOut = sampler_state {
    texture = <ScnMapOut>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// X�����̂ڂ������ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapX2 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE2,TEXSIZE2};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampX2 = sampler_state {
    texture = <ScnMapX2>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// �o�͌��ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapOut2 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE2,TEXSIZE2};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampOut2 = sampler_state {
    texture = <ScnMapOut2>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// X�����̂ڂ������ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapX3 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE3,TEXSIZE3};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampX3 = sampler_state {
    texture = <ScnMapX3>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// �o�͌��ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapOut3 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE3,TEXSIZE3};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampOut3 = sampler_state {
    texture = <ScnMapOut3>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// X�����̂ڂ������ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapX4 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE4,TEXSIZE4};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampX4 = sampler_state {
    texture = <ScnMapX4>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// �o�͌��ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapOut4 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE4,TEXSIZE4};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampOut4 = sampler_state {
    texture = <ScnMapOut4>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// X�����̂ڂ������ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapX5 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE5,TEXSIZE5};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampX5 = sampler_state {
    texture = <ScnMapX5>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// �o�͌��ʂ��L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapOut5 : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE5,TEXSIZE5};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampOut5 = sampler_state {
    texture = <ScnMapOut5>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};

// �O���A���L�^���邽�߂̃����_�[�^�[�Q�b�g
texture2D ScnMapGlare : RENDERCOLORTARGET <
    float2 ViewPortRatio = {TEXSIZE2,TEXSIZE2};
    int MipLevels = 1;
    string Format = AL_TEXFORMAT ;
>;
sampler2D ScnSampGlare = sampler_state {
    texture = <ScnMapGlare>;
    MinFilter = Linear;
    MagFilter = Linear;
    MipFilter = Point;
    AddressU  = Clamp;
    AddressV = Clamp;
};


#if AFTERGLOW!=0
    
    // �c�����L�^���邽�߂̃����_�[�^�[�Q�b�g
    texture2D AfterGlowMap : RENDERCOLORTARGET <
        float2 ViewPortRatio = {TEXSIZE2,TEXSIZE2};
        int MipLevels = 1;
        string Format = AL_TEXFORMAT ;
    >;
    sampler2D AfterGlowSamp = sampler_state {
        texture = <AfterGlowMap>;
        MinFilter = Linear;
        MagFilter = Linear;
        MipFilter = Point;
        AddressU  = Clamp;
        AddressV = Clamp;
    };
    
#endif

////////////////////////////////////////////////////////////////////////////////////////////////
// ���Ƃѕ\���֐�
float4 OverExposure(float4 color){
    float4 newcolor = color;
    
    //����F��1�𒴂���ƁA���̐F�ɂ��ӂ��
    newcolor.gb += max(color.r - 1, 0) * OverExposureRatio * float2(0.65, 0.6);
    newcolor.rb += max(color.g - 1, 0) * OverExposureRatio * float2(0.5, 0.6);
    newcolor.rg += max(color.b - 1, 0) * OverExposureRatio * float2(0.5, 0.6);
    
    return newcolor;
}


////////////////////////////////////////////////////////////////////////////////////////////////
//�L�[�J���[��r

float ColorMuch(float4 color1, float3 key){
    float3 s = color1.rgb - key;
    float val = length(s) / KeyThreshold;
    val = saturate((1 - val) * 4);
    return val;
}

////////////////////////////////////////////////////////////////////////////////////////////////
//�g�[���J�[�u�̒���
//�����ł������ǂ��Ȃ��Ă��邩�悭�킩��Ȃ��֐��ɂȂ��Ă��܂������A
//���ƂȂ����܂������Ă���̂ŕ|���Ă�����Ȃ�

float4 ToneCurve(float4 Color){
    float3 newcolor;
    const float th = 0.65;
    newcolor = normalize(Color.rgb) * (th + sqrt(max(0, (length(Color.rgb) - th) / 2)));
    newcolor.r = (Color.r > 0) ? newcolor.r : Color.r;
    newcolor.g = (Color.g > 0) ? newcolor.g : Color.g;
    newcolor.b = (Color.b > 0) ? newcolor.b : Color.b;
    
    Color.rgb = min(Color.rgb, newcolor);
    
    return Color;
}

////////////////////////////////////////////////////////////////////////////////////////////////
//���ʒ��_�V�F�[�_
struct VS_OUTPUT {
    float4 Pos            : POSITION;
    float2 Tex            : TEXCOORD0;
};

VS_OUTPUT VS_ALDraw( float4 Pos : POSITION, float2 Tex : TEXCOORD0 , uniform int miplevel) {
    VS_OUTPUT Out = (VS_OUTPUT)0; 
    
    
    #ifdef MIKUMIKUMOVING
    float ofsetsize = 1;
    #else
    float ofsetsize = pow(2, miplevel);
    #endif
    
    
    Out.Pos = Pos;
    Out.Tex = Tex + float2(ViewportOffset.x, ViewportOffset.y) * ofsetsize;
    
    return Out;
}


////////////////////////////////////////////////////////////////////////////////////////////////
//���P�x�����̒��o

struct DoubleColor{
    float4 Color0  : COLOR0;
    float4 Color1  : COLOR1;
};

DoubleColor PS_DrawHighLight( float2 Tex: TEXCOORD0 ) {
    DoubleColor Out = (DoubleColor)0;
    float4 Color, OrgColor, OverLightColor, ExtColor;
    
    Color = tex2Dlod(EmitterView, float4(Tex, 0, 0));
    //Color.a = 0;
    
    //���X�N���[���̍��P�x�����̒��o
    OrgColor = tex2Dlod(ScnSamp, float4(Tex, 0, 0));
    OverLightColor = OrgColor * OverLight;
    OverLightColor = max(0, OverLightColor - 0.98);
    OverLightColor = ToneCurve(OverLightColor);
    
    #if KEYCOLOR_NUM!=0
        [unroll] //���[�v�W�J
        for(int i = 0; i < KEYCOLOR_NUM; i++){
            float cm = ColorMuch(OrgColor, KeyColors[i][0]);
            Color.rgb += cm * KeyColors[i][2];
            Out.Color1 = lerp(Out.Color1, float4(KeyColors[i][1], 1), cm);
        }
    #endif
    
    Color *= timerate;
    
    ExtColor = tex2Dlod(ExternalHighLightView, float4(Tex, 0, 0));
    Color.rgb += (OverLightColor.rgb * !ExternLightSampling + ExtColor.rgb);
    
    Color *= scaling * 2;
    
    Color.a = 1;
    
    Out.Color0 = Color;
    
    return Out;
}

////////////////////////////////////////////////////////////////////////////////////////////////

#define HLSampler HighLightView

////////////////////////////////////////////////////////////////////////////////////////////////
// MipMap���p�ڂ���

float4 PS_AL_Gaussian( float2 Tex: TEXCOORD0, 
           uniform bool Horizontal, uniform sampler2D Samp, 
           uniform int miplevel, uniform int scalelevel
           ) : COLOR {
    
    float e, n = 0;
    float2 stex;
    float4 Color, sum = 0;
    float scalepow = pow(2, scalelevel);
    float step = (Horizontal ? AL_SampStepScaled.x : AL_SampStepScaled.y) * scalepow;
    const float2 dir = float2(Horizontal, !Horizontal);
    float4 scolor;
    
    [unroll] //���[�v�W�J
    for(int i = -AL_SAMP_NUM; i <= AL_SAMP_NUM; i++){
        e = exp(-pow((float)i / (AL_SAMP_NUM / 2.0), 2) / 2); //���K���z
        stex = Tex + dir * (step * (float)i);
        scolor = tex2Dlod( Samp, float4(stex, 0, miplevel));
        sum += scolor * e;
        n += e;
    }
    
    Color = sum / n;
    
    //��P�x�̈�̌��̍L����𐧌�
    //if(!Horizontal) Color = max(0, abs(Color) - scalepow * (2 - alpha1) * 0.002) * sign(Color);
    //Color = max(0, abs(Color) - scalepow * 0.0007) * sign(Color);
    if(!Horizontal) Color = min(abs(Color), pow(abs(Color), 1 + scalelevel * 0.1 * (2 - alpha1) * Modest)) * sign(Color);
    
    return Color;
}


////////////////////////////////////////////////////////////////////////////////////////////////
//�������ڂ���

float4 PS_AL_DirectionalBlur( float2 Tex: TEXCOORD0 , uniform sampler2D Samp, uniform bool isfirst) : COLOR {   
    float e, n = 0;
    float2 stex1, stex2, stex3, stex4;
    float4 Color, sum = 0;
    float4 sum1 = 0, sum2 = 0, sum3 = 0, sum4 = 0;
    
    float step = AL_SampStep2 * (1.0 + cos(AL_LoopIndex * 5.1 + rot.x * 10) * 0.3);
    
    float ang = (AL_LoopIndex * 180.0 / (int)Glare) * PI / 180 + GlareAngle;
    float2 dir = float2(cos(ang) / ViewportAspect, sin(ang)) * step;
    float p = 1;
    
    #if GLARE_LONGONE!=0
        p = (1 + (AL_LoopIndex == 0)) * 0.7;
        dir *= p;
    #endif
    
    [unroll] //���[�v�W�J
    for(int i = -AL_SAMP_NUM2; i <= AL_SAMP_NUM2; i++){
        e = exp(-pow((float)i / (AL_SAMP_NUM2 / 2.0), 2) / 2); //���K���z
        if(isfirst){
            stex1 = Tex + dir * ((float)i * 1.0);
            stex2 = Tex + dir * ((float)i * 1.8);
            stex3 = Tex + dir * ((float)i * 3.9);
            //stex4 = Tex + dir * ((float)i * 7.7);
        }else{
            stex1 = Tex + dir * ((float)i * 0.75);
        }
        if(isfirst){
            sum1 += max(0, tex2Dlod( Samp, float4(stex1, 0, 1) )) * e;
            sum2 += max(0, tex2Dlod( Samp, float4(stex2, 0, 2) )) * e;
            sum3 += max(0, tex2Dlod( Samp, float4(stex3, 0, 3) )) * e;
            //sum4 += max(0, tex2Dlod( Samp, float4(stex4, 0, 4) )) * e;
        }else{
            sum1 += max(0, tex2Dlod( Samp, float4(stex1, 0, 0) )) * e;
        }
        
        n += e;
    }
    
    sum1 /= n;
    sum2 /= n;
    sum3 /= n;
    //sum4 /= n;
    
    sum1 = max(0, sum1 - 0.006); sum2 = max(0, sum2 - 0.015); sum3 = max(0, sum3 - 0.029); //sum4 = max(0, sum4 - 0.032);
    
    Color = sum1 + sum2 + sum3 + sum4;
    
    if(isfirst){
        Color *= GlareAspect;
        Color *= p;
        Color /= sqrt(0.2 + (float)((int)Glare));
        Color = ToneCurve(Color * GlarePower);
    }
    
    return Color;
}

////////////////////////////////////////////////////////////////////////////////////////////////

float4 PS_DrawCoreColor( float2 Tex: TEXCOORD0 ) : COLOR {
    float4 Color;
    
    Color = tex2D(ScnSampOut, Tex);
    
    Color = max(Color, 0.8 * tex2D( ScnSampOut, Tex+float2(0,OnePx.y)));
    Color = max(Color, 0.8 * tex2D( ScnSampOut, Tex+float2(0,-OnePx.y)));
    Color = max(Color, 0.8 * tex2D( ScnSampOut, Tex+float2(OnePx.x,0)));
    Color = max(Color, 0.8 * tex2D( ScnSampOut, Tex+float2(-OnePx.x,0)));
    
    Color = max(Color, 0.5 * tex2D( ScnSampOut, Tex+float2(OnePx.x,OnePx.y)));
    Color = max(Color, 0.5 * tex2D( ScnSampOut, Tex+float2(OnePx.x,-OnePx.y)));
    Color = max(Color, 0.5 * tex2D( ScnSampOut, Tex+float2(-OnePx.x,OnePx.y)));
    Color = max(Color, 0.5 * tex2D( ScnSampOut, Tex+float2(-OnePx.x,-OnePx.y)));
    
    return Color;
}

////////////////////////////////////////////////////////////////////////////////////////////////

#if AFTERGLOW!=0
    float4 PS_AfterGlowCopy( float2 Tex: TEXCOORD0 ) : COLOR {
        float4 Color = tex2D(AfterGlowSamp, Tex);
        float2 step = AL_SampStep * 0.1;
        
        Color += tex2D(AfterGlowSamp, Tex + float2(step.x, 0));
        Color += tex2D(AfterGlowSamp, Tex - float2(step.x, 0));
        Color += tex2D(AfterGlowSamp, Tex + float2(0, step.y));
        Color += tex2D(AfterGlowSamp, Tex - float2(0, step.y));
        Color /= 5;
        
        
        Color *= (1.0 - 1.0 / AFTERGLOW);
        //Color -= 0.1;
        //Color = max(Color, 0);
        
        return Color;
    }
#endif

////////////////////////////////////////////////////////////////////////////////////////////////
//����

float4 PS_AL_Mix( float2 Tex: TEXCOORD0 , uniform bool FullOut) : COLOR {
    
    float4 Color;
    
    float crate1 = 1, crate2 = 1, crate3 = 1, crate4 = 0.8;
    
    Color = tex2D(ScnSampOut, Tex);
    Color += tex2D(ScnSampOut2, Tex) * crate1;
    Color += tex2D(ScnSampOut3, Tex) * crate2;
    Color += tex2D(ScnSampOut4, Tex) * crate3;
    Color += tex2D(ScnSampOut5, Tex) * crate4;
    
    Color *= (1 - 0.3 * (Glare >= 1));
    
    Color += tex2D(ScnSampGlare, Tex);
    
    if(!ScreenToneCurve) Color = ToneCurve(Color); //�g�[���J�[�u�̒���
    
    //�}�X�N�̓K�p
    #if MASK_ENABLE!=0
        Color *= 1 - tex2D(MaskView, Tex).a;
    #endif
    
    #if AFTERGLOW!=0
        Color = max(Color, tex2D(ScnSampX2, Tex));
    #endif
    
    if(!FullOut){
        Color.a = saturate(Color.a);
        return Color;
    }
    
    
    float4 basecolor = tex2D(ScnSamp, Tex);
    basecolor.rgb *= OverLight;
    basecolor.rgb = saturate(basecolor.rgb);
    Color = Color + basecolor;
    
    //���Ƃѕ\��
    Color = OverExposure(Color);
    
    if(ScreenToneCurve) Color = ToneCurve(Color); //�g�[���J�[�u�̒���
    
    Color.a = basecolor.a + length(Color.rgb);
    Color.a = saturate(Color.a);
    Color.rgb /= Color.a;
    
    return Color;
}

////////////////////////////////////////////////////////////////////////////////////////////////

float4 PS_Test( float2 Tex: TEXCOORD0 ) : COLOR {
    return float4(tex2D(HighLightView, Tex).rgb * TestValue * 0.1, 1);
    //return float4(tex2D(EmitterView, Tex).rgb, 1);
    
}

////////////////////////////////////////////////////////////////////////////////////////////////
//�e�N�j�b�N

// �����_�����O�^�[�Q�b�g�̃N���A�l

float4 ClearColor = {0,0,0,0};
float ClearDepth  = 1.0;


technique AutoLuminous <
    string Script = 
        
        "RenderColorTarget0=ExternalHighLight;"
        "ClearSetColor=ClearColor;"
        "Clear=Color;"
        
        "RenderColorTarget0=ScnMap;"
        "RenderDepthStencilTarget=DepthBuffer;"
        "ClearSetColor=BackColor; ClearSetDepth=ClearDepth;"
        "Clear=Color; Clear=Depth;"
        "ScriptExternal=Color;"
        
        "RenderColorTarget0=HighLight;"
        "RenderColorTarget1=ScnMapOut;"
        "ClearSetColor=ClearColor; ClearSetDepth=ClearDepth;"
        "Clear=Color; Clear=Depth;"
        "Pass=DrawHighLight;"
        
        #if KEYCOLOR_NUM!=0
            "RenderColorTarget0=ScnMap;"
            "RenderColorTarget1=;"
            "RenderDepthStencilTarget=DepthBuffer;"
            "Pass=DrawCoreColor;"
        #endif
        
        
        
        "RenderColorTarget0=ScnMapGlare;"
        "RenderColorTarget1=;"
        "RenderDepthStencilTarget=DepthBuffer2;"
        "Clear=Color; Clear=Depth;"
        
        "LoopByCount=Glare;"
        "LoopGetIndex=AL_LoopIndex;"
            
            "RenderColorTarget0=ScnMapX2;"
            "Clear=Color; Clear=Depth;"
            "Pass=AL_DirectionalBlur1;"
            
            "RenderColorTarget0=ScnMapGlare;"
            "Clear=Depth;"
            "Pass=AL_DirectionalBlur2;"
            
        "LoopEnd=;"
        
        
        "RenderColorTarget0=ScnMapX;"
        "RenderColorTarget1=;"
        "RenderDepthStencilTarget=DepthBuffer;"
        "ClearSetColor=ClearColor; ClearSetDepth=ClearDepth;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_X;"
        
        "RenderColorTarget0=ScnMapOut;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_Y;"
        
        "RenderColorTarget0=ScnMapX2;"
        "RenderDepthStencilTarget=DepthBuffer2;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_X2;"
        
        "RenderColorTarget0=ScnMapOut2;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_Y2;"
        
        "RenderColorTarget0=ScnMapX3;"
        "RenderDepthStencilTarget=DepthBuffer3;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_X3;"
        
        "RenderColorTarget0=ScnMapOut3;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_Y3;"
        
        "RenderColorTarget0=ScnMapX4;"
        "RenderDepthStencilTarget=DepthBuffer4;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_X4;"
        
        "RenderColorTarget0=ScnMapOut4;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_Y4;"
        
        
        "RenderColorTarget0=ScnMapX5;"
        "RenderDepthStencilTarget=DepthBuffer5;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_X5;"
        
        "RenderColorTarget0=ScnMapOut5;"
        "Clear=Color; Clear=Depth;"
        "Pass=AL_Gaussian_Y5;"
        
        
        #if AFTERGLOW!=0
            "RenderColorTarget0=ScnMapX2;"
            "RenderDepthStencilTarget=DepthBuffer2;"
            "ClearSetColor=ClearColor; ClearSetDepth=ClearDepth;"
            "Clear=Color; Clear=Depth;"
            "Pass=AfterGlowCopy;"
            
            "RenderColorTarget0=AfterGlowMap;"
            "RenderDepthStencilTarget=DepthBuffer2;"
            "ClearSetDepth=ClearDepth;"
            "Clear=Depth;"
            "Pass=AfterGlow;"
        #endif
        
        "RenderColorTarget0=;"
        "RenderDepthStencilTarget=;"
        "ClearSetColor=ClearColor; ClearSetDepth=ClearDepth;"
        "Clear=Depth;"
        "Clear=Color;"
        "Pass=AL_Mix;"
        
        "LoopByCount=TestMode;"
        "LoopGetIndex=AL_LoopIndex;"
            
            "Pass=AL_Test;"
            
        "LoopEnd=;"
    ;
    
> {
    
    pass AL_Gaussian_X < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(0);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(true, HLSampler, 0, 0);
    }
    pass AL_Gaussian_Y < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(0);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(false, ScnSampX, 0, 0);
    }
    
    pass AL_Gaussian_X2 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(1);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(true, HLSampler, 2, 2);
    }
    pass AL_Gaussian_Y2 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(1);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(false, ScnSampX2, 0, 2);
    }
    
    pass AL_Gaussian_X3 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(2);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(true, HLSampler, 4, 4);
    }
    pass AL_Gaussian_Y3 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(2);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(false, ScnSampX3, 0, 4);
    }
    
    pass AL_Gaussian_X4 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(3);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(true, HLSampler, 5, 5);
    }
    pass AL_Gaussian_Y4 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(3);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(false, ScnSampX4, 0, 5);
    }
    
    pass AL_Gaussian_X5 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(4);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(true, HLSampler, 7, 7);
    }
    pass AL_Gaussian_Y5 < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(4);
        PixelShader  = compile ps_3_0 PS_AL_Gaussian(false, ScnSampX5, 0, 7);
    }
    
    
    
    pass AL_DirectionalBlur1 < string Script= "Draw=Buffer;"; > {
        SRCBLEND = ONE;
        DESTBLEND = ONE;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(1);
        PixelShader  = compile ps_3_0 PS_AL_DirectionalBlur(HLSampler, true);
    }
    
    pass AL_DirectionalBlur2 < string Script= "Draw=Buffer;"; > {
        SRCBLEND = ONE;
        DESTBLEND = ONE;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(1);
        PixelShader  = compile ps_3_0 PS_AL_DirectionalBlur(ScnSampX2, false);
    }
    pass AL_DirectionalBlur3 < string Script= "Draw=Buffer;"; > {
        SRCBLEND = ONE;
        DESTBLEND = ONE;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(1);
        PixelShader  = compile ps_3_0 PS_AL_DirectionalBlur(ScnSampOut2, false);
    }
    
    
    
    pass DrawHighLight < string Script= "Draw=Buffer;"; > {
        AlphaTestEnable = false;
        AlphaBlendEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(0);
        PixelShader  = compile ps_3_0 PS_DrawHighLight();
    }
    
    pass DrawCoreColor < string Script= "Draw=Buffer;"; > {
        AlphaTestEnable = true;
        AlphaBlendEnable = true;
        VertexShader = compile vs_3_0 VS_ALDraw(0);
        PixelShader  = compile ps_3_0 PS_DrawCoreColor();
    }
    
    #if AFTERGLOW!=0
        pass AfterGlowCopy < string Script= "Draw=Buffer;"; > {
            AlphaTestEnable = false;
            VertexShader = compile vs_3_0 VS_ALDraw(1);
            PixelShader  = compile ps_3_0 PS_AfterGlowCopy();
        }
        
        pass AfterGlow < string Script= "Draw=Buffer;"; > {
            
            #if ALPHA_OUT!=0
                AlphaBlendEnable = false;
                AlphaTestEnable = false;
            #endif
            
            VertexShader = compile vs_3_0 VS_ALDraw(1);
            PixelShader  = compile ps_3_0 PS_AL_Mix(false);
        }
    
    #endif
    
    pass AL_Mix < string Script= "Draw=Buffer;"; > {
        
        #if ALPHA_OUT!=0
            AlphaBlendEnable = false;
            AlphaTestEnable = false;
        #endif
        
        VertexShader = compile vs_3_0 VS_ALDraw(0);
        PixelShader  = compile ps_3_0 PS_AL_Mix(true);
    }
    
    pass AL_Test < string Script= "Draw=Buffer;"; > {
        AlphaBlendEnable = false;
        AlphaTestEnable = false;
        VertexShader = compile vs_3_0 VS_ALDraw(0);
        PixelShader  = compile ps_3_0 PS_Test();
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////




