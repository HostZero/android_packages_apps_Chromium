.class final Lorg/chromium/chrome/browser/firstrun/ImageCarousel$2;
.super Landroid/util/Property;
.source "ImageCarousel.java"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 123
    # getter for: Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;
    invoke-static {p1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->access$200(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)[Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getChildDrawingOrder(II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$2;->get(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel$2;->set(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;Ljava/lang/Float;)V

    return-void
.end method

.method public final set(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;Ljava/lang/Float;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 128
    # getter for: Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;
    invoke-static {p1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->access$200(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)[Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getChildDrawingOrder(II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 129
    # getter for: Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->mViews:[Landroid/widget/ImageView;
    invoke-static {p1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->access$200(Lorg/chromium/chrome/browser/firstrun/ImageCarousel;)[Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v1}, Lorg/chromium/chrome/browser/firstrun/ImageCarousel;->getChildDrawingOrder(II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 130
    return-void
.end method
