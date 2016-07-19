.class final Lcom/google/android/gms/cast/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field private final a:J

.field private synthetic b:Lcom/google/android/gms/cast/C;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/C;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/D;->b:Lcom/google/android/gms/cast/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/cast/D;->a:J

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/o;)V
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/D;->b:Lcom/google/android/gms/cast/C;

    iget-object v0, v0, Lcom/google/android/gms/cast/C;->a:Lcom/google/android/gms/cast/w;

    invoke-static {v0}, Lcom/google/android/gms/cast/w;->d(Lcom/google/android/gms/cast/w;)Lcom/google/android/gms/cast/internal/w;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/D;->a:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/w;->a(JI)V

    .line 0
    :cond_0
    return-void
.end method
