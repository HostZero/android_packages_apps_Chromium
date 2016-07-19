.class final Landroid/support/v4/app/k;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# static fields
.field private static n:Z


# instance fields
.field a:Landroid/support/v4/app/o;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:Ljava/lang/CharSequence;

.field l:Ljava/util/ArrayList;

.field m:Ljava/util/ArrayList;

.field private o:Landroid/support/v4/app/FragmentManagerImpl;

.field private p:Landroid/support/v4/app/o;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/k;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/k;->g:I

    .line 354
    iput-object p1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    .line 355
    return-void
.end method

.method private a(Z)I
    .locals 3

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 623
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v0, Landroid/support/v4/g/e;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/g/e;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 626
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 628
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    .line 629
    iget-boolean v0, p0, Landroid/support/v4/app/k;->e:Z

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/k;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/k;->g:I

    .line 634
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 635
    iget v0, p0, Landroid/support/v4/app/k;->g:I

    return v0

    .line 632
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/k;->g:I

    goto :goto_0
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/p;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 1019
    new-instance v2, Landroid/support/v4/app/p;

    invoke-direct {v2, p0}, Landroid/support/v4/app/p;-><init>(Landroid/support/v4/app/k;)V

    .line 1024
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/C;

    .line 4166
    iget-object v1, v1, Landroid/support/v4/app/C;->a:Landroid/content/Context;

    .line 1024
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/p;->d:Landroid/view/View;

    move v6, v7

    move v8, v7

    .line 1028
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1029
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1030
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/k;->a(ILandroid/support/v4/app/p;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 1028
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    .line 1037
    :cond_0
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1038
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1039
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/k;->a(ILandroid/support/v4/app/p;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 1037
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1046
    :cond_2
    if-nez v8, :cond_3

    .line 1047
    const/4 v2, 0x0

    .line 1050
    :cond_3
    return-object v2

    :cond_4
    move v1, v8

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/app/k;Landroid/support/v4/app/p;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/g/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    .line 10341
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    .line 10342
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 10343
    if-eqz v1, :cond_0

    .line 10344
    iget-object v2, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 10345
    invoke-static {v0, v1}, Landroid/support/v4/app/d;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 10346
    if-eqz p2, :cond_2

    .line 10347
    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/g/a;)Landroid/support/v4/g/a;

    move-result-object v0

    .line 10290
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 10291
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/aJ;

    if-eqz v1, :cond_1

    .line 10292
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/aJ;

    .line 10295
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/p;Landroid/support/v4/g/a;Z)V

    .line 188
    :goto_1
    return-object v0

    .line 10350
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->a(Ljava/util/Collection;)Z

    goto :goto_0

    .line 10297
    :cond_3
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    if-eqz v1, :cond_4

    .line 10298
    iget-object v1, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    .line 10301
    :cond_4
    invoke-static {p1, v0, v3}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/p;Landroid/support/v4/g/a;Z)V

    goto :goto_1
.end method

.method private a(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/g/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1090
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    .line 1091
    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/d;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1093
    if-eqz p3, :cond_2

    .line 1094
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->a(Ljava/util/Collection;)Z

    .line 1101
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1102
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    if-eqz v1, :cond_1

    .line 1103
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    .line 1106
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/p;Landroid/support/v4/g/a;Z)V

    .line 1115
    :goto_1
    return-object v0

    .line 1096
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/g/a;)Landroid/support/v4/g/a;

    move-result-object v0

    goto :goto_0

    .line 1108
    :cond_3
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/aJ;

    if-eqz v1, :cond_4

    .line 1109
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/aJ;

    .line 1112
    :cond_4
    invoke-static {p1, v0, v3}, Landroid/support/v4/app/k;->b(Landroid/support/v4/app/p;Landroid/support/v4/g/a;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/g/a;)Landroid/support/v4/g/a;
    .locals 5

    .prologue
    .line 1316
    invoke-virtual {p2}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    :goto_0
    return-object p2

    .line 1319
    :cond_0
    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    .line 1320
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1321
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1322
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1323
    if-eqz v0, :cond_1

    .line 1324
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object p2, v1

    .line 1327
    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/k;Landroid/support/v4/app/p;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/p;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/k;Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;)V
    .locals 2

    .prologue
    .line 188
    .line 12262
    if-eqz p4, :cond_1

    iget-object v0, p3, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    .line 12265
    :goto_0
    if-eqz v0, :cond_0

    .line 12266
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12267
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    :cond_0
    return-void

    .line 12262
    :cond_1
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/k;Landroid/support/v4/g/a;Landroid/support/v4/app/p;)V
    .locals 2

    .prologue
    .line 188
    .line 11273
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11275
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11277
    if-eqz v0, :cond_0

    .line 11278
    iget-object v1, p2, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/I;

    iput-object v0, v1, Landroid/support/v4/app/I;->a:Landroid/view/View;

    .line 188
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/p;ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1370
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1371
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1372
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1373
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v3, p2, :cond_0

    .line 1375
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1376
    iget-object v3, p1, Landroid/support/v4/app/p;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1377
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1379
    iget-object v3, p1, Landroid/support/v4/app/p;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1384
    iget-object v3, p1, Landroid/support/v4/app/p;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1389
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/p;Landroid/support/v4/g/a;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1417
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    .line 1418
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1419
    iget-object v0, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1420
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1421
    invoke-virtual {p2, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1422
    if-eqz v1, :cond_0

    .line 9033
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1424
    if-eqz p3, :cond_2

    .line 1425
    iget-object v4, p1, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/g/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1417
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 1427
    :cond_2
    iget-object v4, p1, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/g/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1431
    :cond_3
    return-void
.end method

.method private static a(Landroid/support/v4/app/p;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1406
    if-eqz p1, :cond_0

    .line 1407
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1408
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1409
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1410
    iget-object v3, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/g/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1413
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/g/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1393
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1394
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/g/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1395
    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/g/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_0
    :goto_1
    return-void

    .line 1394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1400
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 746
    if-eqz p1, :cond_0

    .line 747
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 748
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 750
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    :cond_0
    return-void
.end method

.method private a(ILandroid/support/v4/app/p;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 37

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/A;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v4/app/A;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1133
    if-nez v6, :cond_0

    .line 1134
    const/4 v4, 0x0

    .line 1226
    :goto_0
    return v4

    .line 1136
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    .line 1137
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/Fragment;

    .line 5054
    if-nez v11, :cond_2

    .line 5055
    const/16 v25, 0x0

    .line 5071
    :goto_1
    if-eqz v11, :cond_1

    if-nez v12, :cond_4

    .line 5072
    :cond_1
    const/4 v7, 0x0

    .line 6062
    :goto_2
    if-nez v12, :cond_8

    .line 6063
    const/4 v4, 0x0

    move-object v13, v4

    .line 1143
    :goto_3
    const/16 v17, 0x0

    .line 1144
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    if-eqz v7, :cond_c

    .line 1146
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v12, v2}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/g/a;

    move-result-object v17

    .line 1147
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1148
    const/4 v7, 0x0

    .line 1149
    const/16 v17, 0x0

    move-object v10, v7

    .line 1164
    :goto_4
    if-nez v25, :cond_e

    if-nez v10, :cond_e

    if-nez v13, :cond_e

    .line 1166
    const/4 v4, 0x0

    goto :goto_0

    .line 5057
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v4

    :goto_5
    invoke-static {v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 5074
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v4

    .line 5083
    :goto_6
    if-nez v4, :cond_6

    .line 5084
    const/4 v7, 0x0

    goto :goto_2

    .line 5074
    :cond_5
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 5086
    :cond_6
    check-cast v4, Landroid/transition/Transition;

    .line 5087
    if-nez v4, :cond_7

    .line 5088
    const/4 v7, 0x0

    goto :goto_2

    .line 5090
    :cond_7
    new-instance v7, Landroid/transition/TransitionSet;

    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    .line 5091
    invoke-virtual {v7, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_2

    .line 6065
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v4

    :goto_7
    invoke-static {v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_7

    .line 1152
    :cond_a
    if-eqz p3, :cond_d

    iget-object v4, v12, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    .line 1155
    :goto_8
    if-eqz v4, :cond_b

    .line 1156
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6233
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    new-instance v4, Landroid/support/v4/app/m;

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v4 .. v12}, Landroid/support/v4/app/m;-><init>(Landroid/support/v4/app/k;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/p;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v14, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_c
    move-object v10, v7

    goto :goto_4

    .line 1152
    :cond_d
    iget-object v4, v11, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/aJ;

    goto :goto_8

    .line 1169
    :cond_e
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/p;->d:Landroid/view/View;

    .line 7081
    if-eqz v13, :cond_1f

    .line 7082
    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-static {v13, v5, v0, v1, v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v7

    .line 1174
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    if-eqz v4, :cond_10

    if-eqz v17, :cond_10

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1176
    if-eqz v4, :cond_10

    .line 1177
    if-eqz v7, :cond_f

    .line 1178
    invoke-static {v7, v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1180
    :cond_f
    if-eqz v10, :cond_10

    .line 1181
    invoke-static {v10, v4}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1187
    :cond_10
    new-instance v12, Landroid/support/v4/app/l;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)V

    .line 1195
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    new-instance v18, Landroid/support/v4/g/a;

    invoke-direct/range {v18 .. v18}, Landroid/support/v4/g/a;-><init>()V

    .line 1198
    const/4 v4, 0x1

    .line 1199
    if-eqz v11, :cond_1e

    .line 1200
    if-eqz p3, :cond_15

    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v4

    :goto_a
    move v11, v4

    .line 7162
    :goto_b
    const/4 v13, 0x1

    move-object/from16 v4, v25

    .line 7163
    check-cast v4, Landroid/transition/Transition;

    move-object v5, v7

    .line 7164
    check-cast v5, Landroid/transition/Transition;

    move-object v9, v10

    .line 7165
    check-cast v9, Landroid/transition/Transition;

    .line 7167
    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    .line 7176
    :goto_c
    if-eqz v11, :cond_16

    .line 7178
    new-instance v24, Landroid/transition/TransitionSet;

    invoke-direct/range {v24 .. v24}, Landroid/transition/TransitionSet;-><init>()V

    .line 7179
    if-eqz v4, :cond_11

    .line 7180
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 7182
    :cond_11
    if-eqz v5, :cond_12

    .line 7183
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 7185
    :cond_12
    if-eqz v9, :cond_13

    .line 7186
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1206
    :cond_13
    :goto_d
    if-eqz v24, :cond_14

    .line 1207
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/support/v4/app/p;->d:Landroid/view/View;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/I;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    move-object/from16 v9, v25

    move-object v11, v6

    move-object/from16 v19, v8

    invoke-static/range {v9 .. v19}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/J;Landroid/view/View;Landroid/support/v4/app/I;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 7359
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v19, Landroid/support/v4/app/n;

    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, p2

    move/from16 v23, p1

    invoke-direct/range {v19 .. v24}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/k;Landroid/view/View;Landroid/support/v4/app/p;ILjava/lang/Object;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/support/v4/app/p;->d:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/d;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/p;ILjava/lang/Object;)V

    move-object/from16 v4, v24

    .line 8066
    check-cast v4, Landroid/transition/Transition;

    .line 8067
    invoke-static {v6, v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1221
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/p;->d:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/p;->b:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v27, v25

    .line 8347
    check-cast v27, Landroid/transition/Transition;

    move-object/from16 v29, v7

    .line 8348
    check-cast v29, Landroid/transition/Transition;

    move-object/from16 v31, v10

    .line 8349
    check-cast v31, Landroid/transition/Transition;

    move-object/from16 v35, v24

    .line 8350
    check-cast v35, Landroid/transition/Transition;

    .line 8351
    if-eqz v35, :cond_14

    .line 8352
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v25, Landroid/support/v4/app/H;

    move-object/from16 v26, v6

    move-object/from16 v28, v16

    move-object/from16 v32, v8

    move-object/from16 v33, v18

    invoke-direct/range {v25 .. v36}, Landroid/support/v4/app/H;-><init>(Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/view/View;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1226
    :cond_14
    if-eqz v24, :cond_1c

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1200
    :cond_15
    invoke-virtual {v11}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v4

    goto/16 :goto_a

    .line 7192
    :cond_16
    const/4 v11, 0x0

    .line 7193
    if-eqz v5, :cond_19

    if-eqz v4, :cond_19

    .line 7194
    new-instance v11, Landroid/transition/TransitionSet;

    invoke-direct {v11}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v11, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 7203
    :cond_17
    :goto_e
    if-eqz v9, :cond_1b

    .line 7204
    new-instance v24, Landroid/transition/TransitionSet;

    invoke-direct/range {v24 .. v24}, Landroid/transition/TransitionSet;-><init>()V

    .line 7205
    if-eqz v4, :cond_18

    .line 7206
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 7208
    :cond_18
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/16 :goto_d

    .line 7198
    :cond_19
    if-eqz v5, :cond_1a

    move-object v4, v5

    .line 7199
    goto :goto_e

    .line 7200
    :cond_1a
    if-nez v4, :cond_17

    move-object v4, v11

    goto :goto_e

    :cond_1b
    move-object/from16 v24, v4

    .line 7211
    goto/16 :goto_d

    .line 1226
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1d
    move v11, v13

    goto/16 :goto_c

    :cond_1e
    move v11, v4

    goto/16 :goto_b

    :cond_1f
    move-object v7, v13

    goto/16 :goto_9
.end method

.method private static b(Landroid/support/v4/app/p;Landroid/support/v4/g/a;Z)V
    .locals 5

    .prologue
    .line 1435
    invoke-virtual {p1}, Landroid/support/v4/g/a;->size()I

    move-result v3

    .line 1436
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1437
    invoke-virtual {p1, v2}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1438
    invoke-virtual {p1, v2}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 10033
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1439
    if-eqz p2, :cond_0

    .line 1440
    iget-object v4, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/g/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/g/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/g/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1445
    :cond_1
    return-void
.end method

.method private static b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 756
    if-eqz p1, :cond_0

    .line 757
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 758
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    :cond_0
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6

    .prologue
    .line 775
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/A;

    invoke-virtual {v0}, Landroid/support/v4/app/A;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    :cond_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    move-object v3, v0

    .line 779
    :goto_0
    if-eqz v3, :cond_0

    .line 780
    iget v0, v3, Landroid/support/v4/app/o;->c:I

    packed-switch v0, :pswitch_data_0

    .line 818
    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/o;

    move-object v3, v0

    goto :goto_0

    .line 782
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 785
    :pswitch_1
    iget-object v1, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 786
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 787
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 788
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 789
    if-eqz v2, :cond_2

    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 790
    :cond_2
    if-ne v0, v2, :cond_4

    .line 791
    const/4 v2, 0x0

    .line 787
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 793
    :cond_4
    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 798
    :cond_6
    invoke-static {p2, v2}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 802
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 805
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 808
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 811
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 814
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(Z)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    .line 455
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/o;->c:I

    .line 456
    iput-object p1, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 457
    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/o;)V

    .line 459
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 399
    .line 3414
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 3416
    if-eqz p2, :cond_1

    .line 3417
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3418
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3422
    :cond_0
    iput-object p2, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 3434
    :cond_1
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    .line 3435
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/o;->c:I

    .line 3436
    iput-object p1, v0, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 3437
    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/o;)V

    .line 400
    return-object p0
.end method

.method public final a(ZLandroid/support/v4/app/p;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/p;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 873
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 874
    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "popFromBackStack: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v0, Landroid/support/v4/g/e;

    const-string/jumbo v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/g/e;-><init>(Ljava/lang/String;)V

    .line 876
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 877
    const-string/jumbo v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 880
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/k;->n:Z

    if-eqz v0, :cond_2

    .line 881
    if-nez p2, :cond_3

    .line 882
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    :cond_1
    invoke-direct {p0, p3, p4, v9}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/p;

    move-result-object p2

    .line 890
    :cond_2
    :goto_0
    invoke-virtual {p0, v8}, Landroid/support/v4/app/k;->a(I)V

    .line 892
    if-eqz p2, :cond_4

    move v6, v2

    .line 893
    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    .line 894
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/o;

    move-object v5, v0

    .line 895
    :goto_3
    if-eqz v5, :cond_a

    .line 896
    if-eqz p2, :cond_6

    move v4, v2

    .line 897
    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    .line 898
    :goto_5
    iget v3, v5, Landroid/support/v4/app/o;->c:I

    packed-switch v3, :pswitch_data_0

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Landroid/support/v4/app/o;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_3
    if-nez p1, :cond_2

    .line 886
    iget-object v0, p0, Landroid/support/v4/app/k;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/k;->l:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/p;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 892
    :cond_4
    iget v0, p0, Landroid/support/v4/app/k;->d:I

    move v6, v0

    goto :goto_1

    .line 893
    :cond_5
    iget v0, p0, Landroid/support/v4/app/k;->c:I

    move v1, v0

    goto :goto_2

    .line 896
    :cond_6
    iget v0, v5, Landroid/support/v4/app/o;->g:I

    move v4, v0

    goto :goto_4

    .line 897
    :cond_7
    iget v0, v5, Landroid/support/v4/app/o;->h:I

    goto :goto_5

    .line 900
    :pswitch_0
    iget-object v3, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 901
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 902
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 954
    :cond_8
    :goto_6
    iget-object v0, v5, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/o;

    move-object v5, v0

    .line 955
    goto :goto_3

    .line 906
    :pswitch_1
    iget-object v3, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 907
    if-eqz v3, :cond_9

    .line 908
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 909
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    invoke-virtual {v0, v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 912
    :cond_9
    iget-object v0, v5, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    .line 913
    :goto_7
    iget-object v0, v5, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 914
    iget-object v0, v5, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 915
    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 916
    iget-object v7, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v7, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 913
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 921
    :pswitch_2
    iget-object v0, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 922
    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 923
    iget-object v3, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 926
    :pswitch_3
    iget-object v0, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 927
    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 928
    iget-object v3, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 932
    :pswitch_4
    iget-object v3, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 933
    iput v0, v3, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 934
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 938
    :pswitch_5
    iget-object v0, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 939
    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 940
    iget-object v3, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 944
    :pswitch_6
    iget-object v0, v5, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 945
    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 946
    iget-object v3, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 957
    :cond_a
    if-eqz p1, :cond_b

    .line 958
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-static {v1}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v6, v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 960
    const/4 p2, 0x0

    .line 963
    :cond_b
    iget v0, p0, Landroid/support/v4/app/k;->g:I

    if-ltz v0, :cond_c

    .line 964
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, p0, Landroid/support/v4/app/k;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 965
    iput v8, p0, Landroid/support/v4/app/k;->g:I

    .line 967
    :cond_c
    return-object p2

    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method final a(I)V
    .locals 6

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/support/v4/app/k;->e:Z

    if-nez v0, :cond_1

    .line 610
    :cond_0
    return-void

    .line 591
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    move-object v2, v0

    .line 594
    :goto_0
    if-eqz v2, :cond_0

    .line 595
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 597
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Bump nesting of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 601
    iget-object v0, v2, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 602
    iget-object v0, v2, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 603
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 604
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 608
    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/o;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method final a(Landroid/support/v4/app/o;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    .line 385
    iput-object p1, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/o;

    iput-object p1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    .line 391
    :goto_0
    iput v1, p1, Landroid/support/v4/app/o;->e:I

    .line 392
    iput v1, p1, Landroid/support/v4/app/o;->f:I

    .line 393
    iput v1, p1, Landroid/support/v4/app/o;->g:I

    .line 394
    iput v1, p1, Landroid/support/v4/app/o;->h:I

    .line 395
    iget v0, p0, Landroid/support/v4/app/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/k;->b:I

    .line 396
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/o;

    iput-object v0, p1, Landroid/support/v4/app/o;->b:Landroid/support/v4/app/o;

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/o;

    iput-object p1, v0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/o;

    .line 389
    iput-object p1, p0, Landroid/support/v4/app/k;->p:Landroid/support/v4/app/o;

    goto :goto_0
.end method

.method public final a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/A;

    invoke-virtual {v0}, Landroid/support/v4/app/A;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    :cond_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    move-object v2, v0

    .line 837
    :goto_0
    if-eqz v2, :cond_0

    .line 838
    iget v0, v2, Landroid/support/v4/app/o;->c:I

    packed-switch v0, :pswitch_data_0

    .line 867
    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/o;

    move-object v2, v0

    goto :goto_0

    .line 840
    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 843
    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, v2, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 845
    iget-object v0, v2, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 844
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 848
    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 851
    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 854
    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 857
    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 860
    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 863
    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/k;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p3, :cond_4

    .line 262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/k;->g:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string/jumbo v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/k;->q:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    iget v0, p0, Landroid/support/v4/app/k;->c:I

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Landroid/support/v4/app/k;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, p0, Landroid/support/v4/app/k;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget v0, p0, Landroid/support/v4/app/k;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 284
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v0, p0, Landroid/support/v4/app/k;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :cond_2
    iget v0, p0, Landroid/support/v4/app/k;->j:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 290
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Landroid/support/v4/app/k;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    if-eqz v0, :cond_c

    .line 298
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    move v2, v1

    move-object v3, v0

    .line 302
    :goto_0
    if-eqz v3, :cond_c

    .line 304
    iget v0, v3, Landroid/support/v4/app/o;->c:I

    packed-switch v0, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/support/v4/app/o;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    if-eqz p3, :cond_8

    .line 319
    iget v0, v3, Landroid/support/v4/app/o;->e:I

    if-nez v0, :cond_5

    iget v0, v3, Landroid/support/v4/app/o;->f:I

    if-eqz v0, :cond_6

    .line 320
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget v0, v3, Landroid/support/v4/app/o;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget v0, v3, Landroid/support/v4/app/o;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_6
    iget v0, v3, Landroid/support/v4/app/o;->g:I

    if-nez v0, :cond_7

    iget v0, v3, Landroid/support/v4/app/o;->h:I

    if-eqz v0, :cond_8

    .line 326
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, v3, Landroid/support/v4/app/o;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget v0, v3, Landroid/support/v4/app/o;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_8
    iget-object v0, v3, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v3, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    .line 333
    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_b

    .line 334
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v5, v3, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 336
    const-string/jumbo v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :pswitch_0
    const-string/jumbo v0, "NULL"

    goto/16 :goto_1

    .line 306
    :pswitch_1
    const-string/jumbo v0, "ADD"

    goto/16 :goto_1

    .line 307
    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    goto/16 :goto_1

    .line 308
    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    goto/16 :goto_1

    .line 309
    :pswitch_4
    const-string/jumbo v0, "HIDE"

    goto/16 :goto_1

    .line 310
    :pswitch_5
    const-string/jumbo v0, "SHOW"

    goto/16 :goto_1

    .line 311
    :pswitch_6
    const-string/jumbo v0, "DETACH"

    goto/16 :goto_1

    .line 312
    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    goto/16 :goto_1

    .line 338
    :cond_9
    if-nez v0, :cond_a

    .line 339
    const-string/jumbo v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_b
    iget-object v3, v3, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/o;

    .line 348
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_c
    return-void

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/k;->a(Z)I

    move-result v0

    return v0
.end method

.method public final getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Landroid/support/v4/app/k;->j:I

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/C;

    .line 3166
    iget-object v0, v0, Landroid/support/v4/app/C;->a:Landroid/content/Context;

    .line 378
    iget v1, p0, Landroid/support/v4/app/k;->j:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->k:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/support/v4/app/k;->j:I

    return v0
.end method

.method public final getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Landroid/support/v4/app/k;->h:I

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/C;

    .line 2166
    iget-object v0, v0, Landroid/support/v4/app/C;->a:Landroid/content/Context;

    .line 371
    iget v1, p0, Landroid/support/v4/app/k;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/k;->i:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/support/v4/app/k;->h:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Landroid/support/v4/app/k;->g:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Landroid/support/v4/app/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 13

    .prologue
    .line 639
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/k;->e:Z

    if-eqz v0, :cond_1

    .line 642
    iget v0, p0, Landroid/support/v4/app/k;->g:I

    if-gez v0, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/k;->a(I)V

    .line 649
    const/4 v0, 0x0

    .line 652
    sget-boolean v1, Landroid/support/v4/app/k;->n:Z

    if-eqz v1, :cond_10

    .line 653
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 654
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 656
    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/k;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 658
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/k;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/p;

    move-result-object v0

    move-object v8, v0

    .line 661
    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    move v7, v0

    .line 662
    :goto_1
    if-eqz v8, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 663
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/o;

    move-object v6, v0

    .line 664
    :goto_3
    if-eqz v6, :cond_e

    .line 665
    if-eqz v8, :cond_4

    const/4 v0, 0x0

    move v5, v0

    .line 666
    :goto_4
    if-eqz v8, :cond_5

    const/4 v0, 0x0

    move v2, v0

    .line 667
    :goto_5
    iget v0, v6, Landroid/support/v4/app/o;->c:I

    packed-switch v0, :pswitch_data_0

    .line 731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/support/v4/app/o;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_2
    iget v0, p0, Landroid/support/v4/app/k;->d:I

    move v7, v0

    goto :goto_1

    .line 662
    :cond_3
    iget v0, p0, Landroid/support/v4/app/k;->c:I

    move v1, v0

    goto :goto_2

    .line 665
    :cond_4
    iget v0, v6, Landroid/support/v4/app/o;->e:I

    move v5, v0

    goto :goto_4

    .line 666
    :cond_5
    iget v0, v6, Landroid/support/v4/app/o;->f:I

    move v2, v0

    goto :goto_5

    .line 669
    :pswitch_0
    iget-object v0, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 670
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 671
    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 735
    :cond_6
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/o;

    move-object v6, v0

    .line 736
    goto :goto_3

    .line 674
    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 675
    iget v9, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 676
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 677
    const/4 v0, 0x0

    move-object v4, v3

    move v3, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_d

    .line 678
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 679
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "OP_REPLACE: adding="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_7
    iget v10, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v10, v9, :cond_8

    .line 682
    if-ne v0, v4, :cond_9

    .line 683
    const/4 v4, 0x0

    iput-object v4, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 677
    :cond_8
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 685
    :cond_9
    iget-object v10, v6, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    if-nez v10, :cond_a

    .line 686
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    .line 688
    :cond_a
    iget-object v10, v6, Landroid/support/v4/app/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 690
    iget-boolean v10, p0, Landroid/support/v4/app/k;->e:Z

    if-eqz v10, :cond_b

    .line 691
    iget v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 692
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Bump nesting of "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_b
    iget-object v10, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v10, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_8

    :cond_c
    move-object v4, v3

    .line 700
    :cond_d
    if-eqz v4, :cond_6

    .line 701
    iput v5, v4, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 702
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_6

    .line 706
    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 707
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 708
    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 711
    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 712
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 713
    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 716
    :pswitch_4
    iget-object v0, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 717
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 718
    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 721
    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 722
    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 723
    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 726
    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/o;->d:Landroid/support/v4/app/Fragment;

    .line 727
    iput v5, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 728
    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 738
    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    iget v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 740
    iget-boolean v0, p0, Landroid/support/v4/app/k;->e:Z

    if-eqz v0, :cond_f

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/k;->o:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/k;)V

    .line 743
    :cond_f
    return-void

    :cond_10
    move-object v8, v0

    goto/16 :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Landroid/support/v4/app/k;->g:I

    if-ltz v1, :cond_0

    .line 245
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Landroid/support/v4/app/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Landroid/support/v4/app/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
