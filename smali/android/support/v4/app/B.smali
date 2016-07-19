.class public final Landroid/support/v4/app/B;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroid/support/v4/app/C;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/C;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    .line 52
    return-void
.end method

.method public static final a(Landroid/support/v4/app/C;)Landroid/support/v4/app/B;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/app/B;

    invoke-direct {v0, p0}, Landroid/support/v4/app/B;-><init>(Landroid/support/v4/app/C;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    .line 1174
    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    .line 58
    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 81
    const/4 p1, 0x0

    .line 87
    :goto_0
    return-object p1

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    return-void
.end method

.method public final a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v2, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/C;Landroid/support/v4/app/A;Landroid/support/v4/app/Fragment;)V

    .line 97
    return-void
.end method

.method public final a(Landroid/support/v4/g/o;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/C;->a(Landroid/support/v4/g/o;)V

    .line 389
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/C;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/C;->a(Z)V

    .line 349
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->setRetainLoader(Z)V

    .line 350
    return-void
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 73
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 320
    return-void
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 119
    return-void
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 155
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 166
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 177
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 188
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 199
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 210
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    .line 214
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 236
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 259
    return-void
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    iget-object v0, v0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0}, Landroid/support/v4/app/C;->j()V

    .line 338
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0}, Landroid/support/v4/app/C;->k()V

    .line 364
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0}, Landroid/support/v4/app/C;->l()V

    .line 371
    return-void
.end method

.method public final s()Landroid/support/v4/g/o;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/app/B;->a:Landroid/support/v4/app/C;

    invoke-virtual {v0}, Landroid/support/v4/app/C;->m()Landroid/support/v4/g/o;

    move-result-object v0

    return-object v0
.end method
