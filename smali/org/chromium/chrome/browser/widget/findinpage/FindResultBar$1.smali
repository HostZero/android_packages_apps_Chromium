.class final Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$1;
.super Ljava/lang/Object;
.source "FindResultBar.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I
    .locals 2

    .prologue
    .line 81
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 78
    check-cast p1, Landroid/graphics/RectF;

    check-cast p2, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/findinpage/FindResultBar$1;->compare(Landroid/graphics/RectF;Landroid/graphics/RectF;)I

    move-result v0

    return v0
.end method
