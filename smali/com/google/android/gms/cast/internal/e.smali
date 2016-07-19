.class public abstract Lcom/google/android/gms/cast/internal/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final b:Lcom/google/android/gms/cast/internal/v;

.field private c:Lcom/google/android/gms/cast/internal/x;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/cast/internal/m;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/internal/v;

    invoke-direct {v0, p2}, Lcom/google/android/gms/cast/internal/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/e;->b:Lcom/google/android/gms/cast/internal/v;

    .line 1000
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/e;->b:Lcom/google/android/gms/cast/internal/v;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/internal/v;->a(Ljava/lang/String;)V

    .line 0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/internal/x;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/e;->c:Lcom/google/android/gms/cast/internal/x;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/e;->c:Lcom/google/android/gms/cast/internal/x;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/e;->b()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/e;->c:Lcom/google/android/gms/cast/internal/x;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method protected final c()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/e;->c:Lcom/google/android/gms/cast/internal/x;

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/x;->a()J

    move-result-wide v0

    return-wide v0
.end method
