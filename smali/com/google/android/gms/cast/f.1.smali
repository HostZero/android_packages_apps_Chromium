.class final Lcom/google/android/gms/cast/f;
.super Lcom/google/android/gms/cast/l;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/d;Lcom/google/android/gms/common/api/g;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/f;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/f;->b:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/l;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/cast/internal/f;

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/f;->b:Lcom/google/android/gms/cast/LaunchOptions;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/cast/internal/f;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/a/l;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/f;->a(I)V

    goto :goto_0
.end method
