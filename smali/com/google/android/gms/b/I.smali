.class public final Lcom/google/android/gms/b/I;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/os/PowerManager$WakeLock;

.field private d:Landroid/os/WorkSource;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/content/Context;

.field private i:Z

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/b/I;->a:Ljava/lang/String;

    const-string/jumbo v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/b/I;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/b/I;->i:Z

    const-string/jumbo v0, "Wake lock name can NOT be empty"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/b/I;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/I;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/I;->h:Landroid/content/Context;

    invoke-static {p4}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.google.android.gms"

    if-eq v0, p4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/b/I;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/I;->f:Ljava/lang/String;

    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, v2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/gms/b/I;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    :cond_0
    invoke-static {p1, p4}, Lcom/google/android/gms/b/f;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/google/android/gms/b/I;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    invoke-virtual {v1, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_1
    return-void

    :cond_2
    iput-object p3, p0, Lcom/google/android/gms/b/I;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/gms/b/I;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/b/I;->i:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/common/api/a/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/b/I;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/b/I;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/b/I;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/b/I;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/b/I;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/b/I;->i:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/b/I;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/b/I;->j:I

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/b/I;->i:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/b/I;->k:I

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/stats/h;->a()Lcom/google/android/gms/common/stats/h;

    iget-object v1, p0, Lcom/google/android/gms/b/I;->h:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/android/gms/b/I;->f:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/b/I;->e:I

    iget-object v0, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/b/f;->a(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/common/stats/h;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, p0, Lcom/google/android/gms/b/I;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/b/I;->k:I

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/b/I;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/b/I;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/b/I;->i:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/b/I;->j:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/b/I;->j:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/I;->i:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/b/I;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/h;->a()Lcom/google/android/gms/common/stats/h;

    iget-object v0, p0, Lcom/google/android/gms/b/I;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/I;->f:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/b/I;->e:I

    iget-object v5, p0, Lcom/google/android/gms/b/I;->d:Landroid/os/WorkSource;

    invoke-static {v5}, Lcom/google/android/gms/b/f;->a(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/common/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/b/I;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/I;->k:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/b/I;->i:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/I;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method
