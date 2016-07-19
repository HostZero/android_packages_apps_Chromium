.class public final Lcom/google/android/gms/cast/t;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/google/android/gms/cast/o;

.field private d:D

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:D

.field private j:Z

.field private k:[J

.field private l:I

.field private m:I

.field private final n:Lcom/google/android/gms/cast/u;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/cast/t;->a:I

    iput v1, p0, Lcom/google/android/gms/cast/t;->l:I

    iput v1, p0, Lcom/google/android/gms/cast/t;->m:I

    new-instance v0, Lcom/google/android/gms/cast/u;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/u;-><init>(Lcom/google/android/gms/cast/t;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/t;->n:Lcom/google/android/gms/cast/u;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/cast/t;->a(Lorg/json/JSONObject;I)I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/t;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/t;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/cast/t;)Lcom/google/android/gms/cast/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/t;->c:Lcom/google/android/gms/cast/o;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;I)I
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    const-string/jumbo v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/gms/cast/t;->b:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_20

    iput-wide v8, p0, Lcom/google/android/gms/cast/t;->b:J

    move v0, v1

    :goto_0
    const-string/jumbo v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "IDLE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/cast/t;->e:I

    if-eq v3, v7, :cond_0

    iput v3, p0, Lcom/google/android/gms/cast/t;->e:I

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-ne v3, v1, :cond_1

    const-string/jumbo v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "CANCELLED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_2
    iget v3, p0, Lcom/google/android/gms/cast/t;->f:I

    if-eq v4, v3, :cond_1

    iput v4, p0, Lcom/google/android/gms/cast/t;->f:I

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string/jumbo v3, "playbackRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "playbackRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/t;->d:D

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_2

    iput-wide v4, p0, Lcom/google/android/gms/cast/t;->d:D

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string/jumbo v3, "currentTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_3

    const-string/jumbo v3, "currentTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/cast/internal/m;->a(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/t;->g:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iput-wide v4, p0, Lcom/google/android/gms/cast/t;->g:J

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string/jumbo v3, "supportedMediaCommands"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "supportedMediaCommands"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/t;->h:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    iput-wide v4, p0, Lcom/google/android/gms/cast/t;->h:J

    or-int/lit8 v0, v0, 0x2

    :cond_4
    const-string/jumbo v3, "volume"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_6

    const-string/jumbo v3, "volume"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/t;->i:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_5

    iput-wide v4, p0, Lcom/google/android/gms/cast/t;->i:D

    or-int/lit8 v0, v0, 0x2

    :cond_5
    const-string/jumbo v4, "muted"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/t;->j:Z

    if-eq v3, v4, :cond_6

    iput-boolean v3, p0, Lcom/google/android/gms/cast/t;->j:Z

    or-int/lit8 v0, v0, 0x2

    :cond_6
    const/4 v3, 0x0

    const-string/jumbo v4, "activeTrackIds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v3, "activeTrackIds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [J

    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_d

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v7, "PLAYING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v7, "PAUSED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v5

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v7, "BUFFERING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v6

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "INTERRUPTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v4, "FINISHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v1

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v4, v6

    goto/16 :goto_2

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/cast/t;->k:[J

    if-nez v4, :cond_16

    move v4, v1

    :goto_4
    if-eqz v4, :cond_e

    iput-object v3, p0, Lcom/google/android/gms/cast/t;->k:[J

    :cond_e
    :goto_5
    if-eqz v4, :cond_f

    iput-object v3, p0, Lcom/google/android/gms/cast/t;->k:[J

    or-int/lit8 v0, v0, 0x2

    :cond_f
    const-string/jumbo v3, "customData"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "customData"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    or-int/lit8 v0, v0, 0x2

    :cond_10
    const-string/jumbo v3, "media"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "media"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/cast/o;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/o;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, p0, Lcom/google/android/gms/cast/t;->c:Lcom/google/android/gms/cast/o;

    or-int/lit8 v0, v0, 0x2

    const-string/jumbo v4, "metadata"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    or-int/lit8 v0, v0, 0x4

    :cond_11
    const-string/jumbo v3, "currentItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "currentItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/t;->a:I

    if-eq v4, v3, :cond_12

    iput v3, p0, Lcom/google/android/gms/cast/t;->a:I

    or-int/lit8 v0, v0, 0x2

    :cond_12
    const-string/jumbo v3, "preloadedItemId"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/t;->m:I

    if-eq v4, v3, :cond_13

    iput v3, p0, Lcom/google/android/gms/cast/t;->m:I

    or-int/lit8 v0, v0, 0x10

    :cond_13
    const-string/jumbo v3, "loadingItemId"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/t;->l:I

    if-eq v4, v3, :cond_14

    iput v3, p0, Lcom/google/android/gms/cast/t;->l:I

    or-int/lit8 v0, v0, 0x2

    :cond_14
    iget v3, p0, Lcom/google/android/gms/cast/t;->e:I

    iget v4, p0, Lcom/google/android/gms/cast/t;->l:I

    .line 1000
    if-ne v3, v1, :cond_1a

    if-nez v4, :cond_1a

    .line 0
    :goto_6
    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/cast/t;->n:Lcom/google/android/gms/cast/u;

    invoke-static {v1, p1}, Lcom/google/android/gms/cast/u;->a(Lcom/google/android/gms/cast/u;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x8

    :cond_15
    :goto_7
    return v0

    :cond_16
    iget-object v4, p0, Lcom/google/android/gms/cast/t;->k:[J

    array-length v4, v4

    if-eq v4, v6, :cond_17

    move v4, v1

    goto/16 :goto_4

    :cond_17
    move v4, v2

    :goto_8
    if-ge v4, v6, :cond_1d

    iget-object v5, p0, Lcom/google/android/gms/cast/t;->k:[J

    aget-wide v8, v5, v4

    aget-wide v10, v3, v4

    cmp-long v5, v8, v10

    if-eqz v5, :cond_18

    move v4, v1

    goto/16 :goto_4

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_19
    iget-object v4, p0, Lcom/google/android/gms/cast/t;->k:[J

    if-eqz v4, :cond_1c

    move v4, v1

    goto/16 :goto_5

    :cond_1a
    move v1, v2

    .line 1000
    goto :goto_6

    .line 0
    :cond_1b
    iput v2, p0, Lcom/google/android/gms/cast/t;->a:I

    iput v2, p0, Lcom/google/android/gms/cast/t;->l:I

    iput v2, p0, Lcom/google/android/gms/cast/t;->m:I

    iget-object v1, p0, Lcom/google/android/gms/cast/t;->n:Lcom/google/android/gms/cast/u;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/u;->a()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/cast/t;->n:Lcom/google/android/gms/cast/u;

    invoke-static {v1}, Lcom/google/android/gms/cast/u;->a(Lcom/google/android/gms/cast/u;)V

    or-int/lit8 v0, v0, 0x8

    goto :goto_7

    :cond_1c
    move v4, v2

    goto/16 :goto_5

    :cond_1d
    move v4, v2

    goto/16 :goto_4

    :cond_1e
    move v4, v2

    goto/16 :goto_2

    :cond_1f
    move v3, v2

    goto/16 :goto_1

    :cond_20
    move v0, v2

    goto/16 :goto_0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/t;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/t;->e:I

    return v0
.end method
