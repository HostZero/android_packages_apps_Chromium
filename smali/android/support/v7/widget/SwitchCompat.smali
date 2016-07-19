.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final E:[I


# instance fields
.field private A:Landroid/text/Layout;

.field private B:Landroid/text/method/TransformationMethod;

.field private C:Landroid/support/v7/widget/bt;

.field private final D:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Z

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Landroid/view/VelocityTracker;

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/text/TextPaint;

.field private y:Landroid/content/res/ColorStateList;

.field private z:Landroid/text/Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->E:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 171
    const v0, 0x7f0100cf

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v5, Landroid/text/TextPaint;->density:F

    .line 192
    sget-object v0, Landroid/support/v7/a/a;->bs:[I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/N;

    move-result-object v5

    .line 194
    sget v0, Landroid/support/v7/a/a;->bv:I

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 198
    :cond_0
    sget v0, Landroid/support/v7/a/a;->bC:I

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    :cond_1
    sget v0, Landroid/support/v7/a/a;->bu:I

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/N;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 203
    sget v0, Landroid/support/v7/a/a;->bt:I

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/N;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    .line 204
    sget v0, Landroid/support/v7/a/a;->bw:I

    invoke-virtual {v5, v0, v2}, Landroid/support/v7/internal/widget/N;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    .line 205
    sget v0, Landroid/support/v7/a/a;->bB:I

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/internal/widget/N;->e(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->c:I

    .line 207
    sget v0, Landroid/support/v7/a/a;->by:I

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/internal/widget/N;->e(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:I

    .line 209
    sget v0, Landroid/support/v7/a/a;->bz:I

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/internal/widget/N;->e(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    .line 211
    sget v0, Landroid/support/v7/a/a;->bx:I

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/internal/widget/N;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->f:Z

    .line 213
    sget v0, Landroid/support/v7/a/a;->bA:I

    invoke-virtual {v5, v0, v1}, Landroid/support/v7/internal/widget/N;->g(II)I

    move-result v0

    .line 215
    if-eqz v0, :cond_3

    .line 1237
    sget-object v6, Landroid/support/v7/a/a;->bD:[I

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1242
    sget v0, Landroid/support/v7/a/a;->bE:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1243
    if-eqz v0, :cond_4

    .line 1244
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    .line 1250
    :goto_0
    sget v0, Landroid/support/v7/a/a;->bF:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1251
    if-eqz v0, :cond_2

    .line 1252
    int-to-float v7, v0

    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->getTextSize()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 1253
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1254
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 1259
    :cond_2
    sget v0, Landroid/support/v7/a/a;->bH:I

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1260
    sget v7, Landroid/support/v7/a/a;->bG:I

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1276
    packed-switch v0, :pswitch_data_0

    move-object v0, v4

    .line 1300
    :goto_1
    if-lez v7, :cond_9

    .line 1301
    if-nez v0, :cond_5

    .line 1302
    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1307
    :goto_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/graphics/Typeface;)V

    .line 1309
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 1310
    :goto_3
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v7, v0

    .line 1311
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1312
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_8

    const/high16 v0, -0x41800000    # -0.25f

    :goto_5
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1264
    :goto_6
    sget v0, Landroid/support/v7/a/a;->bI:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 1265
    if-eqz v0, :cond_a

    .line 1266
    new-instance v0, Landroid/support/v7/internal/a/a;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    .line 1271
    :goto_7
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    :cond_3
    invoke-virtual {v5}, Landroid/support/v7/internal/widget/N;->b()Landroid/support/v7/internal/widget/L;

    .line 221
    invoke-virtual {v5}, Landroid/support/v7/internal/widget/N;->a()V

    .line 223
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    .line 225
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->o:I

    .line 228
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 230
    return-void

    .line 1247
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    goto/16 :goto_0

    .line 1278
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 1282
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 1286
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 1304
    :cond_5
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1309
    goto :goto_3

    :cond_7
    move v0, v1

    .line 1311
    goto :goto_4

    :cond_8
    move v0, v3

    .line 1312
    goto :goto_5

    .line 1314
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1315
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1316
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/graphics/Typeface;)V

    goto :goto_6

    .line 1268
    :cond_a
    iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    goto :goto_7

    .line 1276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/widget/SwitchCompat;)Landroid/support/v7/widget/bt;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SwitchCompat;Landroid/support/v7/widget/bt;)Landroid/support/v7/widget/bt;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 606
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    :goto_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_0
    move-object v1, p1

    .line 602
    goto :goto_0

    .line 606
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    .line 783
    :cond_0
    return-void
.end method

.method private a(F)V
    .locals 0

    .prologue
    .line 795
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    .line 796
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 797
    return-void
.end method

.method private a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 334
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SwitchCompat;F)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->a(F)V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 786
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 1039
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    sub-float/2addr v0, v1

    .line 1044
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 1042
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    goto :goto_0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v7/internal/widget/w;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1059
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    .line 1062
    :goto_1
    return v0

    .line 1056
    :cond_0
    sget-object v0, Landroid/support/v7/internal/widget/w;->a:Landroid/graphics/Rect;

    goto :goto_0

    .line 1062
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 879
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 880
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->t:I

    .line 881
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 882
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    .line 883
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    .line 885
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->c()I

    move-result v0

    add-int v2, v1, v0

    .line 888
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v7/internal/widget/w;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 895
    :goto_0
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 896
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 899
    iget v6, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    .line 906
    if-eqz v0, :cond_6

    .line 907
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-le v2, v8, :cond_0

    .line 908
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v8

    add-int/2addr v1, v2

    .line 910
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-le v2, v8, :cond_5

    .line 911
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v8

    add-int/2addr v2, v3

    .line 913
    :goto_1
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_1

    .line 914
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v4, v8

    .line 916
    :cond_1
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    .line 917
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v8

    sub-int v0, v5, v0

    .line 920
    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v6

    .line 924
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 925
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 927
    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    .line 928
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    add-int/2addr v0, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 929
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 931
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 932
    if-eqz v2, :cond_2

    .line 933
    invoke-static {v2, v1, v3, v0, v5}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 939
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 940
    return-void

    .line 891
    :cond_3
    sget-object v0, Landroid/support/v7/internal/widget/w;->a:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v0, v5

    move v2, v3

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .prologue
    .line 1094
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1095
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1098
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 1102
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 1105
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1077
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1079
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 1081
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1085
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1086
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1089
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 1090
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 1009
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1010
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1016
    :cond_0
    :goto_0
    return v0

    .line 1012
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    add-int/2addr v0, v1

    .line 1013
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 1021
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1028
    :cond_0
    :goto_0
    return v0

    .line 1024
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    add-int/2addr v0, v1

    .line 1025
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 1114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1115
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1117
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1121
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1125
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->a()V

    .line 1127
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 1068
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1069
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    sget-object v1, Landroid/support/v7/widget/SwitchCompat;->E:[I

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    .line 1072
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 944
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 946
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 947
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 948
    if-eqz v1, :cond_4

    .line 949
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 954
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 955
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    .line 956
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 957
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 959
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 960
    if-eqz v1, :cond_0

    .line 961
    iget-boolean v5, p0, Landroid/support/v7/widget/SwitchCompat;->f:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 962
    invoke-static {v4}, Landroid/support/v7/internal/widget/w;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    .line 963
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 964
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 965
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 967
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 968
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 969
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 970
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 976
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 978
    if-eqz v4, :cond_1

    .line 979
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 982
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    move-object v1, v0

    .line 983
    :goto_2
    if-eqz v1, :cond_3

    .line 984
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 985
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 986
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 988
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    iput-object v0, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 991
    if-eqz v4, :cond_7

    .line 992
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 993
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    .line 998
    :goto_3
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 999
    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 1000
    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1001
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    :cond_3
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1005
    return-void

    .line 951
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 972
    :cond_5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 982
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    move-object v1, v0

    goto :goto_2

    .line 995
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v0

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1132
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1133
    const-string/jumbo v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1134
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1139
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1140
    const-string/jumbo v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 1142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1145
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    :cond_0
    :goto_1
    return-void

    .line 1141
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1147
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 823
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 827
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 828
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 829
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 835
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v7/internal/widget/w;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v3

    .line 836
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 837
    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 842
    :goto_1
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    .line 844
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    add-int/2addr v3, v2

    sub-int v1, v3, v1

    sub-int v0, v1, v0

    move v1, v0

    move v0, v2

    .line 852
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 855
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v3

    .line 856
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    add-int/2addr v2, v3

    .line 871
    :goto_3
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->t:I

    .line 872
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 873
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    .line 874
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    .line 875
    return-void

    .line 832
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 846
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 847
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    sub-int v3, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    .line 860
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    .line 862
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    add-int/2addr v2, v3

    .line 863
    goto :goto_3

    .line 866
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 867
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    sub-int v3, v2, v3

    goto :goto_3

    :cond_2
    move v1, v0

    goto :goto_1

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    .line 534
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 548
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    if-eqz v3, :cond_5

    .line 549
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->c:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 555
    :goto_1
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    .line 558
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 559
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 560
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 568
    :goto_2
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 569
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 570
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 571
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Landroid/support/v7/internal/widget/w;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 572
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 573
    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 576
    :cond_2
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->d:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 578
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 579
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    .line 580
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    .line 582
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v1

    .line 585
    if-ge v1, v0, :cond_3

    .line 586
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->i(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 588
    :cond_3
    return-void

    :cond_4
    move v0, v1

    move v2, v1

    .line 544
    goto :goto_0

    :cond_5
    move v3, v1

    .line 552
    goto :goto_1

    .line 562
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 593
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 595
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 596
    :goto_0
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 634
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 635
    invoke-static {p1}, Landroid/support/v4/view/M;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 636
    packed-switch v0, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 638
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 640
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1616
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1621
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->c()I

    move-result v2

    .line 1623
    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1624
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    sub-int/2addr v5, v6

    .line 1625
    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->t:I

    add-int/2addr v2, v6

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    sub-int/2addr v2, v6

    .line 1626
    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    add-int/2addr v6, v2

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    add-int/2addr v6, v7

    .line 1628
    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    add-int/2addr v7, v8

    .line 1629
    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    int-to-float v2, v6

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    int-to-float v2, v5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    int-to-float v2, v7

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    move v4, v3

    .line 640
    :cond_2
    if-eqz v4, :cond_0

    .line 641
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 642
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    .line 643
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->m:F

    goto :goto_0

    .line 649
    :pswitch_2
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 655
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 657
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->m:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 659
    :cond_3
    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 660
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 661
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    .line 662
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->m:F

    goto/16 :goto_1

    .line 669
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 670
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->d()I

    move-result v0

    .line 671
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    sub-float v5, v4, v5

    .line 673
    if-eqz v0, :cond_6

    .line 674
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 680
    :goto_2
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 681
    neg-float v0, v0

    .line 683
    :cond_4
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    add-float/2addr v0, v5

    .line 2159
    cmpg-float v5, v0, v2

    if-gez v5, :cond_8

    move v1, v2

    .line 684
    :cond_5
    :goto_3
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 685
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    .line 686
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(F)V

    goto/16 :goto_1

    .line 678
    :cond_6
    cmpl-float v0, v5, v2

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    .line 2159
    :cond_8
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_5

    move v1, v0

    goto :goto_3

    .line 696
    :pswitch_5
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    if-ne v0, v5, :cond_10

    .line 2724
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 2728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 2729
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    .line 2731
    if-eqz v0, :cond_f

    .line 2732
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2733
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 2734
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->o:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_e

    .line 2735
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    cmpg-float v0, v0, v2

    if-gez v0, :cond_b

    move v0, v3

    .line 2743
    :goto_5
    if-eq v0, v1, :cond_9

    .line 2744
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V

    .line 2747
    :cond_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 3712
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3713
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3714
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3715
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 699
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    :cond_a
    move v0, v4

    .line 2728
    goto :goto_4

    :cond_b
    move v0, v4

    .line 2735
    goto :goto_5

    :cond_c
    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    move v0, v3

    goto :goto_5

    :cond_d
    move v0, v4

    goto :goto_5

    .line 2737
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->b()Z

    move-result v0

    goto :goto_5

    :cond_f
    move v0, v1

    .line 2740
    goto :goto_5

    .line 702
    :cond_10
    iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 703
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 806
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 810
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    .line 812
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->A(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3752
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    if-eqz v3, :cond_0

    .line 3754
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->a()V

    .line 3757
    :cond_0
    new-instance v3, Landroid/support/v7/widget/bt;

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    if-eqz v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {v3, p0, v4, v0, v1}, Landroid/support/v7/widget/bt;-><init>(Landroid/support/v7/widget/SwitchCompat;FFB)V

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    .line 3758
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/bt;->setDuration(J)V

    .line 3759
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    new-instance v1, Landroid/support/v7/widget/bs;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/bs;-><init>(Landroid/support/v7/widget/SwitchCompat;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bt;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3775
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/support/v7/widget/bt;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    .line 819
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 3757
    goto :goto_0

    .line 816
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->a()V

    .line 817
    if-eqz v2, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(F)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 802
    return-void

    .line 801
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1109
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
