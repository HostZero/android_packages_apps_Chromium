.class final Landroid/support/v7/internal/app/e;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field private a:Z

.field private synthetic b:Landroid/support/v7/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Landroid/support/v7/internal/app/e;->b:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/app/ToolbarActionBar;B)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1}, Landroid/support/v7/internal/app/e;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 2

    .prologue
    .line 600
    iget-boolean v0, p0, Landroid/support/v7/internal/app/e;->a:Z

    if-eqz v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/app/e;->a:Z

    .line 605
    iget-object v0, p0, Landroid/support/v7/internal/app/e;->b:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->c(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/widget/v;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->m()V

    .line 606
    iget-object v0, p0, Landroid/support/v7/internal/app/e;->b:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Landroid/support/v7/internal/app/e;->b:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/app/e;->a:Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/app/e;->b:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/support/v7/internal/app/e;->b:Landroid/support/v7/internal/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
