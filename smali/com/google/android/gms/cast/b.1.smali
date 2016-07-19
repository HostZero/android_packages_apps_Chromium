.class final Lcom/google/android/gms/cast/b;
.super Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/e;
    .locals 11

    .prologue
    .line 0
    check-cast p4, Lcom/google/android/gms/cast/h;

    .line 1000
    const-string/jumbo v0, "Setting the API options is required."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/cast/internal/f;

    iget-object v5, p4, Lcom/google/android/gms/cast/h;->a:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {p4}, Lcom/google/android/gms/cast/h;->a(Lcom/google/android/gms/cast/h;)I

    move-result v0

    int-to-long v6, v0

    iget-object v8, p4, Lcom/google/android/gms/cast/h;->b:Lcom/google/android/gms/cast/j;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/cast/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/j;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/j;)V

    .line 0
    return-object v1
.end method
