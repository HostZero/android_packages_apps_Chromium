.class public final Landroid/support/v7/internal/view/menu/g;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/x;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Landroid/support/v7/internal/view/menu/i;

.field c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field private f:I

.field private g:Landroid/support/v7/internal/view/menu/y;

.field private h:Landroid/support/v7/internal/view/menu/h;


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/support/v7/internal/view/menu/g;->c:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/g;->f:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/internal/view/menu/g;-><init>(II)V

    .line 68
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    .line 70
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/g;)I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/support/v7/internal/view/menu/h;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/h;-><init>(Landroid/support/v7/internal/view/menu/g;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->e:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/support/v7/internal/view/menu/h;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/h;-><init>(Landroid/support/v7/internal/view/menu/g;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v7/internal/view/menu/g;->f:I

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/g;->f:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    .line 93
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/i;

    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/y;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    .line 135
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->notifyDataSetChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/C;)Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/C;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 142
    :cond_0
    new-instance v0, Landroid/support/v7/internal/view/menu/l;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/l;-><init>(Landroid/support/v7/internal/view/menu/i;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/os/IBinder;)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->g:Landroid/support/v7/internal/view/menu/y;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/i;)Z

    .line 146
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/support/v7/internal/view/menu/m;)Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->h:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/h;->a(I)Landroid/support/v7/internal/view/menu/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/x;I)Z

    .line 170
    return-void
.end method
