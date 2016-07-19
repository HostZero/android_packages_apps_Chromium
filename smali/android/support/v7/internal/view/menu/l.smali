.class public final Landroid/support/v7/internal/view/menu/l;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/i;

.field private b:Landroid/support/v7/app/AlertDialog;

.field private c:Landroid/support/v7/internal/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/i;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    .line 57
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v2, Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000f

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/g;

    .line 62
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 63
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2282
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/i;->c:Landroid/view/View;

    .line 68
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 77
    :goto_0
    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 91
    return-void

    .line 3278
    :cond_0
    iget-object v2, v0, Landroid/support/v7/internal/view/menu/i;->b:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 4274
    iget-object v0, v0, Landroid/support/v7/internal/view/menu/i;->a:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    .prologue
    .line 151
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    if-ne p1, v0, :cond_1

    .line 5139
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5140
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 157
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    .line 147
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 125
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/i;->a(Z)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
