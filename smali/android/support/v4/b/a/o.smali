.class final Landroid/support/v4/b/a/o;
.super Landroid/support/v4/b/a/n;
.source "DrawableWrapperLollipop.java"


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/b/a/n;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/b/a/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 48
    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/b/a/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public final getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/b/a/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/b/a/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 43
    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/v4/b/a/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 33
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/v4/b/a/o;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 38
    return-void
.end method
