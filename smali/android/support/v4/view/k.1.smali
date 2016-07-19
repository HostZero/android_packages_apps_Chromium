.class public abstract Landroid/support/v4/view/k;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# instance fields
.field private a:Landroid/support/v4/view/l;

.field private b:Landroid/support/v4/view/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/v4/view/k;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/view/l;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/l;

    .line 227
    return-void
.end method

.method public a(Landroid/support/v4/view/m;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/k;->b:Landroid/support/v4/view/m;

    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v0, "ActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/k;->b:Landroid/support/v4/view/m;

    .line 242
    return-void
.end method

.method public a(Landroid/view/SubMenu;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Landroid/support/v4/view/k;->b:Landroid/support/v4/view/m;

    .line 249
    iput-object v0, p0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/l;

    .line 250
    return-void
.end method
