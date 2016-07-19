.class public Landroid/support/v4/b/a/b;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/b/a/p;
    .locals 2

    .prologue
    .line 3067
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3068
    new-instance v0, Landroid/support/v4/b/a/q;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/b/a/q;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3070
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/b/a/r;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/b/a/r;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    .prologue
    .line 1065
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 1073
    invoke-static {p1, p2}, Landroid/support/v4/b/a/i;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 1074
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .prologue
    .line 1069
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 1078
    invoke-static {p1, p2}, Landroid/support/v4/b/a/i;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1079
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 1083
    invoke-static {p1, p2}, Landroid/support/v4/b/a/i;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1084
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 1056
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1088
    .line 2047
    instance-of v0, p1, Landroid/support/v4/b/a/l;

    if-nez v0, :cond_0

    .line 2048
    new-instance v0, Landroid/support/v4/b/a/l;

    invoke-direct {v0, p1}, Landroid/support/v4/b/a/l;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 2098
    const/4 v0, 0x0

    return v0
.end method
