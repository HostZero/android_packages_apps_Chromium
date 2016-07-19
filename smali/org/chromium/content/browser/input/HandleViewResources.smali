.class public Lorg/chromium/content/browser/input/HandleViewResources;
.super Ljava/lang/Object;
.source "HandleViewResources.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CENTER_HANDLE_ATTRS:[I

.field private static final LEFT_HANDLE_ATTRS:[I

.field private static final RIGHT_HANDLE_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    const-class v0, Lorg/chromium/content/browser/input/HandleViewResources;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/HandleViewResources;->$assertionsDisabled:Z

    .line 29
    new-array v0, v1, [I

    const v3, 0x10102c5

    aput v3, v0, v2

    sput-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    .line 33
    new-array v0, v1, [I

    const v3, 0x10102c7

    aput v3, v0, v2

    sput-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    .line 37
    new-array v0, v1, [I

    const v1, 0x10102c6

    aput v1, v0, v2

    sput-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    return-void

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCenterHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->CENTER_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 78
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    iput-object v3, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 81
    invoke-static {v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eq v2, v0, :cond_2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 91
    :cond_2
    invoke-static {p0, p1}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    sget-boolean v0, Lorg/chromium/content/browser/input/HandleViewResources;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 95
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 96
    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private static getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getHandleHorizontalPaddingRatio()F
    .locals 1

    .prologue
    .line 105
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private static getLeftHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLeftHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->LEFT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getRightHandleBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleBitmap(Landroid/content/Context;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getRightHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/content/browser/input/HandleViewResources;->RIGHT_HANDLE_ATTRS:[I

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleDrawable(Landroid/content/Context;[I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
