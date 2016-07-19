.class public final Lcom/google/android/gms/common/api/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/Map;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/Map;

.field private h:I

.field private i:Landroid/os/Looper;

.field private j:Lcom/google/android/gms/common/j;

.field private k:Lcom/google/android/gms/common/api/d;

.field private final l:Ljava/util/ArrayList;

.field private final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->b:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->e:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/h;->h:I

    invoke-static {}, Lcom/google/android/gms/common/j;->zzoK()Lcom/google/android/gms/common/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/j;

    sget-object v0, Lcom/google/android/gms/b/B;->a:Lcom/google/android/gms/common/api/d;

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->k:Lcom/google/android/gms/common/api/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->m:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/h;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->i:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/h;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/a/d;Lcom/google/android/gms/common/api/g;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/h;->h:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/api/a/d;->a(ILcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/a/d;Lcom/google/android/gms/common/api/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/a/d;Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/h;
    .locals 2

    .prologue
    .line 0
    const-string/jumbo v0, "Api must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/d;

    .line 1000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;
    .locals 1

    const-string/jumbo v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/h;
    .locals 1

    const-string/jumbo v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/common/internal/G;
    .locals 7

    sget-object v6, Lcom/google/android/gms/b/G;->a:Lcom/google/android/gms/b/G;

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/b/B;->b:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/b/B;->b:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/G;

    move-object v6, v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/G;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/h;->a:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/h;->e:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/common/api/h;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/common/api/h;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/G;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/b/G;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/g;
    .locals 19

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "must call addApi() to add at least one API"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/a/j;->b(ZLjava/lang/Object;)V

    .line 2000
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/h;->a()Lcom/google/android/gms/common/internal/G;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/G;->e()Ljava/util/Map;

    move-result-object v9

    new-instance v12, Landroid/support/v4/g/a;

    invoke-direct {v12}, Landroid/support/v4/g/a;-><init>()V

    new-instance v15, Landroid/support/v4/g/a;

    invoke-direct {v15}, Landroid/support/v4/g/a;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/common/api/a;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/h;->g:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x0

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aV;

    iget-boolean v1, v1, Landroid/support/v7/widget/aV;->b:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/common/api/a/o;

    invoke-direct {v6, v8, v1}, Lcom/google/android/gms/common/api/a/o;-><init>(Lcom/google/android/gms/common/api/a;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/d;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/h;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/common/api/h;->i:Landroid/os/Looper;

    move-object v7, v6

    .line 6000
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/d;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/e;

    move-result-object v1

    .line 2000
    invoke-virtual {v8}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v2

    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2000
    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    :cond_3
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/a/F;->a(Ljava/lang/Iterable;Z)I

    move-result v17

    new-instance v5, Lcom/google/android/gms/common/api/a/F;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/common/api/h;->f:Landroid/content/Context;

    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/common/api/h;->i:Landroid/os/Looper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/common/api/h;->j:Lcom/google/android/gms/common/j;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/common/api/h;->k:Lcom/google/android/gms/common/api/d;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/common/api/h;->l:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/common/api/h;->m:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/common/api/h;->h:I

    move/from16 v16, v0

    move-object v9, v4

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/common/api/a/F;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/j;Lcom/google/android/gms/common/api/d;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    .line 0
    invoke-static {}, Lcom/google/android/gms/common/api/g;->f()Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/g;->f()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/common/api/h;->h:I

    if-ltz v1, :cond_4

    .line 7000
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/common/api/a/d;->a(Landroid/support/v4/app/w;)Lcom/google/android/gms/common/api/a/d;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/h;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/common/api/n;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/google/android/gms/common/api/n;-><init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    :cond_4
    :goto_3
    return-object v5

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 7000
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/common/api/h;->a(Lcom/google/android/gms/common/api/a/d;Lcom/google/android/gms/common/api/g;)V

    goto :goto_3
.end method
