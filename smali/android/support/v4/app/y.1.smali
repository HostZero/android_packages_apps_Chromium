.class final Landroid/support/v4/app/y;
.super Landroid/support/v4/app/C;
.source "FragmentActivity.java"


# instance fields
.field private synthetic c:Landroid/support/v4/app/w;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/w;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    .line 877
    invoke-direct {p0, p1}, Landroid/support/v4/app/C;-><init>(Landroid/support/v4/app/w;)V

    .line 878
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/w;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/w;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 937
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/w;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 908
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    # invokes: Landroid/support/v4/app/w;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/w;->access$000(Landroid/support/v4/app/w;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 915
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/support/v4/app/w;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    .line 1362
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 2037
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1363
    :goto_0
    return v0

    .line 1365
    :cond_0
    const/4 v0, 0x0

    .line 919
    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->supportInvalidateOptionsMenu()V

    .line 903
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public final bridge synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 875
    .line 2897
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    .line 875
    return-object v0
.end method
