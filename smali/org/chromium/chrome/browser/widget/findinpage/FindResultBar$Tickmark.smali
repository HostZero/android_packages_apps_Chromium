.class Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;
.super Ljava/lang/Object;
.source "FindResultBar.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field mBottom:F

.field mTop:F

.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;FF)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput p2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    .line 379
    iput p3, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    .line 380
    return-void
.end method


# virtual methods
.method centerY()F
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 374
    check-cast p1, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->compareTo(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;)I
    .locals 2

    .prologue
    .line 397
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->centerY()F

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method height()F
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    iget v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method toRectF()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 388
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    # invokes: Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->getLeftMargin()I
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;)I

    move-result v1

    .line 389
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    iget v4, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mTop:F

    iget-object v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->mBarDrawWidth:I
    invoke-static {v5}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;->access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar;)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$Tickmark;->mBottom:F

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 390
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 391
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 392
    return-object v2
.end method
