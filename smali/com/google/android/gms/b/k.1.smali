.class public final Lcom/google/android/gms/b/k;
.super Lcom/google/android/gms/b/N;


# static fields
.field private static volatile d:[Lcom/google/android/gms/b/k;


# instance fields
.field public a:Lcom/google/android/gms/b/n;

.field public b:Lcom/google/android/gms/b/l;

.field public c:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/b/N;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    iput-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    iput-object v0, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/k;->B:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/b/k;
    .locals 2

    sget-object v0, Lcom/google/android/gms/b/k;->d:[Lcom/google/android/gms/b/k;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/b/M;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/k;->d:[Lcom/google/android/gms/b/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/b/k;

    sput-object v0, Lcom/google/android/gms/b/k;->d:[Lcom/google/android/gms/b/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/b/k;->d:[Lcom/google/android/gms/b/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/b/J;)Lcom/google/android/gms/b/N;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/b/J;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/b/O;->a(Lcom/google/android/gms/b/J;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/b/n;

    invoke-direct {v0}, Lcom/google/android/gms/b/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/J;->a(Lcom/google/android/gms/b/N;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/b/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/J;->a(Lcom/google/android/gms/b/N;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/b/J;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/b/J;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/b/K;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/K;->a(ILcom/google/android/gms/b/N;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/K;->a(ILcom/google/android/gms/b/N;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/K;->a(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/b/K;->a(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/b/N;->a(Lcom/google/android/gms/b/K;)V

    return-void
.end method

.method protected final b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/b/N;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/K;->b(ILcom/google/android/gms/b/N;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/K;->b(ILcom/google/android/gms/b/N;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/b/K;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/b/K;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/k;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/b/k;

    iget-object v2, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    iget-object v3, p1, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    iget-object v3, p1, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/k;->a:Lcom/google/android/gms/b/n;

    invoke-virtual {v0}, Lcom/google/android/gms/b/n;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/k;->b:Lcom/google/android/gms/b/l;

    invoke-virtual {v0}, Lcom/google/android/gms/b/l;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/k;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/b/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method