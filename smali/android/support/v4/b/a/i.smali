.class Landroid/support/v4/b/a/i;
.super Ljava/lang/Object;
.source "DrawableCompatApi23.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 1029
    instance-of v0, p0, Landroid/support/v4/b/a/k;

    if-eqz v0, :cond_0

    .line 1030
    check-cast p0, Landroid/support/v4/b/a/k;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/k;->setTint(I)V

    .line 1032
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1035
    instance-of v0, p0, Landroid/support/v4/b/a/k;

    if-eqz v0, :cond_0

    .line 1036
    check-cast p0, Landroid/support/v4/b/a/k;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/k;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1038
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 1041
    instance-of v0, p0, Landroid/support/v4/b/a/k;

    if-eqz v0, :cond_0

    .line 1042
    check-cast p0, Landroid/support/v4/b/a/k;

    invoke-interface {p0, p1}, Landroid/support/v4/b/a/k;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1044
    :cond_0
    return-void
.end method
