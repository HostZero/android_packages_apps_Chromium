.class public final Landroid/support/v4/view/G;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# static fields
.field private static a:Landroid/support/v4/view/K;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v0, Landroid/support/v4/view/J;

    invoke-direct {v0}, Landroid/support/v4/view/J;-><init>()V

    sput-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 251
    new-instance v0, Landroid/support/v4/view/I;

    invoke-direct {v0}, Landroid/support/v4/view/I;-><init>()V

    sput-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Landroid/support/v4/view/H;

    invoke-direct {v0}, Landroid/support/v4/view/H;-><init>()V

    sput-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/k;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 344
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 345
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/d/a/b;->a(Landroid/support/v4/view/k;)Landroid/support/v4/d/a/b;

    move-result-object p0

    .line 349
    :goto_0
    return-object p0

    .line 348
    :cond_0
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 287
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 288
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/d/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/K;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 323
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0}, Landroid/support/v4/d/a/b;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0}, Landroid/support/v4/view/K;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/MenuItem;I)V
    .locals 1

    .prologue
    .line 268
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 269
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/d/a/b;->setShowAsAction(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/K;->a(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 309
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 310
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0, p1}, Landroid/support/v4/d/a/b;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/K;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 383
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 384
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0}, Landroid/support/v4/d/a/b;->expandActionView()Z

    move-result v0

    .line 386
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0}, Landroid/support/v4/view/K;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 418
    instance-of v0, p0, Landroid/support/v4/d/a/b;

    if-eqz v0, :cond_0

    .line 419
    check-cast p0, Landroid/support/v4/d/a/b;

    invoke-interface {p0}, Landroid/support/v4/d/a/b;->isActionViewExpanded()Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/G;->a:Landroid/support/v4/view/K;

    invoke-interface {v0, p0}, Landroid/support/v4/view/K;->c(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
