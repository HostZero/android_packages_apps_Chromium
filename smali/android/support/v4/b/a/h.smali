.class final Landroid/support/v4/b/a/h;
.super Landroid/support/v4/b/a/g;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/support/v4/b/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 206
    .line 1030
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    .line 206
    return v0
.end method
