.class public Lorg/chromium/ui/resources/LayoutResource;
.super Ljava/lang/Object;
.source "LayoutResource.java"


# instance fields
.field private final mAperture:Landroid/graphics/RectF;

.field private final mBitmapSize:Landroid/graphics/RectF;

.field private final mPadding:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(FLorg/chromium/ui/resources/Resource;)V
    .locals 7

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-interface {p2}, Lorg/chromium/ui/resources/Resource;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 20
    invoke-interface {p2}, Lorg/chromium/ui/resources/Resource;->getBitmapSize()Landroid/graphics/Rect;

    move-result-object v1

    .line 21
    invoke-interface {p2}, Lorg/chromium/ui/resources/Resource;->getAperture()Landroid/graphics/Rect;

    move-result-object v2

    .line 23
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lorg/chromium/ui/resources/LayoutResource;->mPadding:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/chromium/ui/resources/LayoutResource;->mBitmapSize:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/chromium/ui/resources/LayoutResource;->mAperture:Landroid/graphics/RectF;

    .line 31
    return-void
.end method


# virtual methods
.method public getBitmapSize()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/ui/resources/LayoutResource;->mBitmapSize:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/ui/resources/LayoutResource;->mPadding:Landroid/graphics/RectF;

    return-object v0
.end method
