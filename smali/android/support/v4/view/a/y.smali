.class final Landroid/support/v4/view/a/y;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"

# interfaces
.implements Landroid/support/v4/view/a/C;


# instance fields
.field private synthetic a:Landroid/support/v4/view/a/t;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/x;Landroid/support/v4/view/a/t;)V
    .locals 0

    .prologue
    .line 89
    iput-object p2, p0, Landroid/support/v4/view/a/y;->a:Landroid/support/v4/view/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/view/a/y;->a:Landroid/support/v4/view/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/t;->a(I)Landroid/support/v4/view/a/h;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-static {}, Landroid/support/v4/view/a/t;->b()Ljava/util/List;

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 104
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/h;

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/view/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    return-object v2
.end method

.method public final a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/view/a/y;->a:Landroid/support/v4/view/a/t;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/t;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Landroid/support/v4/view/a/t;->c()Landroid/support/v4/view/a/h;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method
