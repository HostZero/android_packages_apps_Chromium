.class public Lorg/chromium/ui/gfx/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static createBitmap(III)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 21
    invoke-static {p2}, Lorg/chromium/ui/gfx/BitmapHelper;->getBitmapConfigForFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 22
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapConfigForFormat(I)Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 54
    packed-switch p0, :pswitch_data_0

    .line 63
    :pswitch_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0

    .line 56
    :pswitch_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 60
    :pswitch_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getBitmapFormatForConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lorg/chromium/ui/gfx/BitmapHelper$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 35
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 41
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getByteCount(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
