.class public Lcom/google/android/gms/cast/internal/w;
.super Lcom/google/android/gms/cast/internal/c;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/google/android/gms/cast/t;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/gms/cast/internal/z;

.field private final g:Lcom/google/android/gms/cast/internal/z;

.field private final h:Lcom/google/android/gms/cast/internal/z;

.field private final i:Lcom/google/android/gms/cast/internal/z;

.field private final j:Lcom/google/android/gms/cast/internal/z;

.field private final k:Lcom/google/android/gms/cast/internal/z;

.field private final l:Lcom/google/android/gms/cast/internal/z;

.field private final m:Lcom/google/android/gms/cast/internal/z;

.field private final n:Lcom/google/android/gms/cast/internal/z;

.field private final o:Lcom/google/android/gms/cast/internal/z;

.field private final p:Lcom/google/android/gms/cast/internal/z;

.field private final q:Lcom/google/android/gms/cast/internal/z;

.field private final r:Lcom/google/android/gms/cast/internal/z;

.field private final s:Lcom/google/android/gms/cast/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/internal/w;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/google/android/gms/cast/internal/w;->c:Ljava/lang/String;

    const-string/jumbo v2, "MediaControlChannel"

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/internal/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->f:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->g:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->h:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->i:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->j:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->k:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->l:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->m:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->n:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->o:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->p:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->q:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->r:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Lcom/google/android/gms/cast/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->s:Lcom/google/android/gms/cast/internal/z;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->f:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->g:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->h:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->i:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->j:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->k:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->l:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->m:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->n:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->o:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->p:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->q:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->r:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->s:Lcom/google/android/gms/cast/internal/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/w;->f()V

    return-void
.end method

.method private a(JLorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->f:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/z;->a(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->j:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/z;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->j:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/z;->a(J)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/w;->k:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/z;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/w;->k:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/cast/internal/z;->a(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/w;->l:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/z;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/w;->l:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/cast/internal/z;->a(J)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_1
    :goto_1
    if-eqz v0, :cond_a

    const/4 v0, 0x2

    :goto_2
    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    if-nez v1, :cond_8

    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/t;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/t;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/16 v0, 0x1f

    :goto_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/w;->a()V

    :cond_4
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/w;->a()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/t;->a(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method private e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No current media session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/t;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/z;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/internal/y;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/w;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->m:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/z;->a(JLcom/google/android/gms/cast/internal/y;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/w;->a(Z)V

    :try_start_0
    const-string/jumbo v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v4, "GET_STATUS"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/t;->a()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/w;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/cast/internal/y;Lorg/json/JSONObject;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/w;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->g:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/z;->a(JLcom/google/android/gms/cast/internal/y;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/w;->a(Z)V

    :try_start_0
    const-string/jumbo v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v4, "PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/w;->e()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string/jumbo v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/w;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->b:Lcom/google/android/gms/cast/internal/v;

    const-string/jumbo v1, "message received: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "MEDIA_STATUS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/cast/internal/w;->a(JLorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/w;->a()V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->m:Lcom/google/android/gms/cast/internal/z;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->b:Lcom/google/android/gms/cast/internal/v;

    const-string/jumbo v2, "Message is malformed (%s); ignoring: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v4, "INVALID_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->b:Lcom/google/android/gms/cast/internal/v;

    const-string/jumbo v4, "received unexpected error: Invalid Player State."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "LOAD_FAILED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->f:Lcom/google/android/gms/cast/internal/z;

    const/16 v4, 0x834

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "LOAD_CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->f:Lcom/google/android/gms/cast/internal/z;

    const/16 v4, 0x835

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "INVALID_REQUEST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->b:Lcom/google/android/gms/cast/internal/v;

    const-string/jumbo v4, "received unexpected error: Invalid Request."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/cast/internal/z;->a(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected final a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/z;->b(J)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/cast/internal/z;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/z;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/cast/internal/y;Lorg/json/JSONObject;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/w;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/w;->h:Lcom/google/android/gms/cast/internal/z;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/z;->a(JLcom/google/android/gms/cast/internal/y;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/w;->a(Z)V

    :try_start_0
    const-string/jumbo v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v4, "PLAY"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/w;->e()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string/jumbo v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/w;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/cast/internal/c;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/w;->f()V

    return-void
.end method

.method public final d()Lcom/google/android/gms/cast/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/w;->d:Lcom/google/android/gms/cast/t;

    return-object v0
.end method
