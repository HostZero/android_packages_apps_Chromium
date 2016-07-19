.class Landroid/support/v4/b/a/e;
.super Landroid/support/v4/b/a/d;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/support/v4/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 136
    .line 1028
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 137
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 141
    .line 1032
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    .line 141
    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    .line 1036
    instance-of v0, p1, Landroid/support/v4/b/a/n;

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Landroid/support/v4/b/a/n;

    invoke-direct {v0, p1}, Landroid/support/v4/b/a/n;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
