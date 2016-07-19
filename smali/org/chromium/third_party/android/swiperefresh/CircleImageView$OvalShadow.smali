.class Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field final synthetic this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;


# direct methods
.method public constructor <init>(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;II)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 149
    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    .line 150
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 152
    iput p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowRadius:I

    .line 153
    iput p3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    .line 154
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 158
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    return-void

    .line 154
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 163
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getWidth()I

    move-result v0

    .line 164
    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->this$0:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->getHeight()I

    move-result v1

    .line 165
    int-to-float v2, v0

    div-float/2addr v2, v6

    int-to-float v3, v1

    div-float/2addr v3, v6

    iget v4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;->mCircleDiameter:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    return-void
.end method
