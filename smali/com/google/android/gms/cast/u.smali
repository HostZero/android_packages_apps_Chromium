.class final Lcom/google/android/gms/cast/u;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Landroid/util/SparseArray;

.field private synthetic d:Lcom/google/android/gms/cast/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/t;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/u;->d:Lcom/google/android/gms/cast/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/u;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/u;->c:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/u;)V
    .locals 1

    .prologue
    .line 0
    .line 4000
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/u;->a:I

    iget-object v0, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/u;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 0
    return-void
.end method

.method private a([Lcom/google/android/gms/cast/r;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/u;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/cast/u;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/r;->a()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/u;Lorg/json/JSONObject;)Z
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 0
    .line 1000
    const-string/jumbo v4, "repeatMode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/google/android/gms/cast/u;->a:I

    const-string/jumbo v5, "repeatMode"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    move v0, v4

    :goto_1
    :pswitch_0
    iget v3, p0, Lcom/google/android/gms/cast/u;->a:I

    if-eq v3, v0, :cond_9

    iput v0, p0, Lcom/google/android/gms/cast/u;->a:I

    move v0, v2

    :goto_2
    const-string/jumbo v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    move v3, v1

    :goto_3
    if-ge v3, v7, :cond_1

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "itemId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :sswitch_0
    const-string/jumbo v7, "REPEAT_OFF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "REPEAT_ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "REPEAT_SINGLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_1

    :pswitch_3
    move v0, v3

    goto :goto_1

    :cond_1
    new-array v9, v7, [Lcom/google/android/gms/cast/r;

    move v3, v0

    move v5, v1

    :goto_4
    if-ge v5, v7, :cond_5

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2000
    iget-object v4, p0, Lcom/google/android/gms/cast/u;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    move-object v4, v1

    .line 1000
    :goto_5
    if-eqz v4, :cond_3

    invoke-virtual {v4, v10}, Lcom/google/android/gms/cast/r;->a(Lorg/json/JSONObject;)Z

    move-result v1

    or-int/2addr v1, v3

    aput-object v4, v9, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3000
    iget-object v3, p0, Lcom/google/android/gms/cast/u;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v5, v0, :cond_7

    move v0, v2

    :goto_6
    add-int/lit8 v1, v5, 0x1

    move v3, v0

    move v5, v1

    goto :goto_4

    .line 2000
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/r;

    move-object v4, v1

    goto :goto_5

    .line 1000
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/u;->d:Lcom/google/android/gms/cast/t;

    invoke-static {v1}, Lcom/google/android/gms/cast/t;->a(Lcom/google/android/gms/cast/t;)I

    move-result v1

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/cast/s;

    iget-object v1, p0, Lcom/google/android/gms/cast/u;->d:Lcom/google/android/gms/cast/t;

    invoke-static {v1}, Lcom/google/android/gms/cast/t;->b(Lcom/google/android/gms/cast/t;)Lcom/google/android/gms/cast/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/s;-><init>(Lcom/google/android/gms/cast/o;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/s;->a()Lcom/google/android/gms/cast/r;

    move-result-object v0

    aput-object v0, v9, v5

    aget-object v0, v9, v5

    invoke-virtual {v0, v10}, Lcom/google/android/gms/cast/r;->a(Lorg/json/JSONObject;)Z

    move v0, v2

    goto :goto_6

    :cond_4
    new-instance v0, Lcom/google/android/gms/cast/r;

    invoke-direct {v0, v10}, Lcom/google/android/gms/cast/r;-><init>(Lorg/json/JSONObject;)V

    aput-object v0, v9, v5

    move v0, v2

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v7, :cond_6

    :goto_7
    invoke-direct {p0, v9}, Lcom/google/android/gms/cast/u;->a([Lcom/google/android/gms/cast/r;)V

    .line 0
    :goto_8
    return v2

    :cond_6
    move v2, v3

    goto :goto_7

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v2, v0

    goto :goto_8

    :cond_9
    move v0, v1

    goto/16 :goto_2

    .line 1000
    nop

    :sswitch_data_0
    .sparse-switch
        -0x42a82c11 -> :sswitch_3
        -0x3964a094 -> :sswitch_2
        0x621b08dd -> :sswitch_1
        0x621b3cab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
