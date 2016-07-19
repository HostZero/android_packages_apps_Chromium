.class final Lcom/google/android/gms/cast/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/internal/x;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/w;

.field private b:Lcom/google/android/gms/common/api/g;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/w;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/C;->a:Lcom/google/android/gms/cast/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/C;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/cast/C;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/cast/C;->c:J

    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/common/api/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/C;->b:Lcom/google/android/gms/common/api/g;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/C;->b:Lcom/google/android/gms/common/api/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No GoogleApiClient available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/google/android/gms/cast/C;->b:Lcom/google/android/gms/common/api/g;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/D;

    invoke-direct {v1, p0, p3, p4}, Lcom/google/android/gms/cast/D;-><init>(Lcom/google/android/gms/cast/C;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
