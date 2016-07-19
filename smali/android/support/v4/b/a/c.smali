.class Landroid/support/v4/b/a/c;
.super Landroid/support/v4/b/a/b;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 108
    .line 1029
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 109
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 113
    .line 1033
    instance-of v0, p1, Landroid/support/v4/b/a/m;

    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Landroid/support/v4/b/a/m;

    invoke-direct {v0, p1}, Landroid/support/v4/b/a/m;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
