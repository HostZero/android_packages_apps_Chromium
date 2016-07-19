.class public Lorg/chromium/chrome/browser/tab/SadTabView;
.super Landroid/widget/ScrollView;
.source "SadTabView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDensity:F

.field private mThresholdPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/tab/SadTabView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tab/SadTabView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/tab/SadTabView;->mDensity:F

    .line 29
    iget v0, p0, Lorg/chromium/chrome/browser/tab/SadTabView;->mDensity:F

    const/high16 v1, 0x441b0000    # 620.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/tab/SadTabView;->mThresholdPx:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 35
    sget-boolean v0, Lorg/chromium/chrome/browser/tab/SadTabView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 39
    sget v0, Lorg/chromium/chrome/R$id;->sad_tab_reload_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/SadTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ButtonCompat;

    .line 41
    invoke-virtual {v0}, Lorg/chromium/ui/widget/ButtonCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    if-gt v2, v3, :cond_1

    iget v3, p0, Lorg/chromium/chrome/browser/tab/SadTabView;->mThresholdPx:I

    if-le v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/ui/widget/ButtonCompat;->getWidth()I

    move-result v3

    if-gt v3, v2, :cond_2

    .line 46
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 47
    const v2, 0x800005

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 54
    :goto_0
    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 56
    return-void

    .line 50
    :cond_2
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 51
    const/4 v2, 0x7

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method
