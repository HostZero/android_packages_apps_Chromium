.class final Landroid/support/v7/app/V;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field private synthetic a:Landroid/support/v7/app/N;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 1750
    iput-object p1, p0, Landroid/support/v7/app/V;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/N;B)V
    .locals 0

    .prologue
    .line 1750
    invoke-direct {p0, p1}, Landroid/support/v7/app/V;-><init>(Landroid/support/v7/app/N;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Landroid/support/v7/app/V;->a:Landroid/support/v7/app/N;

    invoke-static {v0, p1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/N;Landroid/support/v7/internal/view/menu/i;)V

    .line 1763
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/support/v7/app/V;->a:Landroid/support/v7/app/N;

    .line 2199
    iget-object v0, v0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1754
    if-eqz v0, :cond_0

    .line 1755
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1757
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
