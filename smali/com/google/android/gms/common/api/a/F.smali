.class public final Lcom/google/android/gms/common/api/a/F;
.super Lcom/google/android/gms/common/api/g;

# interfaces
.implements Lcom/google/android/gms/common/api/a/c;


# instance fields
.field a:Ljava/util/Set;

.field final b:Ljava/util/Set;

.field c:Ljava/util/Set;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private final e:Lcom/google/android/gms/common/internal/S;

.field private f:Lcom/google/android/gms/common/api/a/b;

.field private final g:I

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/Looper;

.field private j:Ljava/util/Queue;

.field private volatile k:Z

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/gms/common/api/a/G;

.field private final o:Lcom/google/android/gms/common/j;

.field private p:Lcom/google/android/gms/common/api/a/I;

.field private q:Ljava/util/Map;

.field private r:Lcom/google/android/gms/common/internal/G;

.field private s:Ljava/util/Map;

.field private t:Lcom/google/android/gms/common/api/d;

.field private final u:Ljava/util/Set;

.field private final v:Ljava/util/ArrayList;

.field private w:Ljava/lang/Integer;

.field private final x:Lcom/google/android/gms/common/api/a/J;

.field private final y:Lcom/google/android/gms/common/internal/T;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/common/j;Lcom/google/android/gms/common/api/d;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/common/api/g;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/a/F;->l:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/a/F;->m:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->a:Ljava/util/Set;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->u:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->c:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/a/L;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/a/L;-><init>(Lcom/google/android/gms/common/api/a/F;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->x:Lcom/google/android/gms/common/api/a/J;

    new-instance v2, Lcom/google/android/gms/common/api/a/M;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/a/M;-><init>(Lcom/google/android/gms/common/api/a/F;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->y:Lcom/google/android/gms/common/internal/T;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/F;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/S;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/F;->y:Lcom/google/android/gms/common/internal/T;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/S;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/T;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a/F;->i:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/a/G;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/common/api/a/G;-><init>(Lcom/google/android/gms/common/api/a/F;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    iput-object p5, p0, Lcom/google/android/gms/common/api/a/F;->o:Lcom/google/android/gms/common/j;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/common/api/a/F;->g:I

    iget v2, p0, Lcom/google/android/gms/common/api/a/F;->g:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    :cond_0
    iput-object p7, p0, Lcom/google/android/gms/common/api/a/F;->s:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->v:Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/i;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/S;->a(Lcom/google/android/gms/common/api/i;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/j;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/S;->a(Lcom/google/android/gms/common/api/j;)V

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/google/android/gms/common/api/a/F;->r:Lcom/google/android/gms/common/internal/G;

    iput-object p6, p0, Lcom/google/android/gms/common/api/a/F;->t:Lcom/google/android/gms/common/api/d;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    :goto_2
    return v2

    :cond_1
    const/4 v2, 0x3

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot use sign-in mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/F;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Mode was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/a/F;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/common/api/a/O;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/F;->i:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/a/F;->o:Lcom/google/android/gms/common/j;

    iget-object v6, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/a/F;->r:Lcom/google/android/gms/common/internal/G;

    iget-object v8, p0, Lcom/google/android/gms/common/api/a/F;->s:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/a/F;->t:Lcom/google/android/gms/common/api/d;

    iget-object v10, p0, Lcom/google/android/gms/common/api/a/F;->v:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/a/O;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a/F;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/j;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/d;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/a/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/gms/common/api/a/j;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/a/F;->i:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/a/F;->o:Lcom/google/android/gms/common/j;

    iget-object v6, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/a/F;->r:Lcom/google/android/gms/common/internal/G;

    iget-object v8, p0, Lcom/google/android/gms/common/api/a/F;->s:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/a/F;->t:Lcom/google/android/gms/common/api/d;

    iget-object v10, p0, Lcom/google/android/gms/common/api/a/F;->v:Ljava/util/ArrayList;

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/a/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a/F;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/j;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/d;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/a/F;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/F;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SIGN_IN_MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/a/F;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/F;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/F;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic j()Lcom/google/android/gms/common/api/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/S;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/b;->a()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->i:Landroid/os/Looper;

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    const-string/jumbo v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/F;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a/F;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/S;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/a/b;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a/k;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/K;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/F;->a(Lcom/google/android/gms/common/api/a/K;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a/K;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-object p1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a/b;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(IZ)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->p:Lcom/google/android/gms/common/api/a/I;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/a/I;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/a/I;-><init>(Lcom/google/android/gms/common/api/a/F;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->o:Lcom/google/android/gms/common/j;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/api/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/a/a;Lcom/google/android/gms/common/j;)Lcom/google/android/gms/common/api/a/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/I;

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->p:Lcom/google/android/gms/common/api/a/I;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/a/G;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/a/F;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a/G;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/a/G;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/a/F;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a/G;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/K;

    if-eqz p2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->c()V

    :cond_2
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string/jumbo v4, "The connection to Google Play services was lost"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a/K;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/S;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/S;->a()V

    if-ne p1, v5, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/F;->k()V

    :cond_4
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/k;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/F;->a(Lcom/google/android/gms/common/api/a/k;)Lcom/google/android/gms/common/api/a/k;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/S;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->o:Lcom/google/android/gms/common/j;

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/j;->zzd(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/F;->g()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/S;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/S;->a()V

    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/gms/common/api/a/K;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->x:Lcom/google/android/gms/common/api/a/J;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a/K;->a(Lcom/google/android/gms/common/api/a/J;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/S;->b(Lcom/google/android/gms/common/api/i;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/j;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/S;->a(Lcom/google/android/gms/common/api/j;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/a/b;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/K;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->a()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->g()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->f()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->c()V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->b()Lcom/google/android/gms/common/api/f;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/a/F;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/e;->q()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/common/api/a/H;

    invoke-direct {v3, v0, v5, v2, v6}, Lcom/google/android/gms/common/api/a/H;-><init>(Lcom/google/android/gms/common/api/a/K;Lcom/google/android/gms/common/api/p;Landroid/os/IBinder;B)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/common/api/a/K;->a(Lcom/google/android/gms/common/api/a/J;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/google/android/gms/common/api/a/H;

    invoke-direct {v3, v0, v5, v2, v6}, Lcom/google/android/gms/common/api/a/H;-><init>(Lcom/google/android/gms/common/api/a/K;Lcom/google/android/gms/common/api/p;Landroid/os/IBinder;B)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/common/api/a/K;->a(Lcom/google/android/gms/common/api/a/J;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->f()V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/p;->a()V

    goto :goto_1

    :cond_3
    invoke-interface {v0, v5}, Lcom/google/android/gms/common/api/a/K;->a(Lcom/google/android/gms/common/api/a/J;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->f()V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/p;->a()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/common/api/a/F;->g:I

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    const-string/jumbo v3, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/a/j;->a(ZLjava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1000
    iget-object v3, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Illegal sign-in mode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/a/j;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/a/F;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/F;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/common/api/a/F;->a(Ljava/lang/Iterable;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/common/api/a/F;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final b(Lcom/google/android/gms/common/api/j;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/S;->b(Lcom/google/android/gms/common/api/j;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a/F;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aV;

    invoke-virtual {v0}, Landroid/support/v7/widget/aV;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a/K;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a/K;->a(Lcom/google/android/gms/common/api/a/J;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/K;->f()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a/F;->g()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->e:Lcom/google/android/gms/common/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/S;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->f:Lcom/google/android/gms/common/api/a/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a/F;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/a/G;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->n:Lcom/google/android/gms/common/api/a/G;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/a/G;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->p:Lcom/google/android/gms/common/api/a/I;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/F;->p:Lcom/google/android/gms/common/api/a/I;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a/I;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a/F;->p:Lcom/google/android/gms/common/api/a/I;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final h()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->c:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/a/F;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final i()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/a/F;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
