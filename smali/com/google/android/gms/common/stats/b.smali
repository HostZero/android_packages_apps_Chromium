.class public final Lcom/google/android/gms/common/stats/b;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x64

    const-string/jumbo v0, "gms:common:stats:max_num_of_events"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/T;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/b/T;

    const-string/jumbo v0, "gms:common:stats:max_chunk_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/T;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/b/T;

    return-void
.end method
