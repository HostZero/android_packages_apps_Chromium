.class final Landroid/support/v7/internal/widget/A;
.super Landroid/support/v7/graphics/drawable/a;
.source "ListViewCompat.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    .line 366
    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 0

    .prologue
    .line 369
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/A;->a:Z

    .line 370
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/a;->draw(Landroid/graphics/Canvas;)V

    .line 385
    :cond_0
    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/a;->setHotspot(FF)V

    .line 392
    :cond_0
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/a;->setHotspotBounds(IIII)V

    .line 399
    :cond_0
    return-void
.end method

.method public final setState([I)Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/a;->setState([I)Z

    move-result v0

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 404
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/a;->setVisible(ZZ)Z

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
