.class final Lcom/google/android/gms/cast/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/cast/internal/f;

.field private synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/i;->a:Lcom/google/android/gms/cast/internal/f;

    iput p2, p0, Lcom/google/android/gms/cast/internal/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/i;->a:Lcom/google/android/gms/cast/internal/f;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/f;->d(Lcom/google/android/gms/cast/internal/f;)Lcom/google/android/gms/cast/j;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/cast/internal/i;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/j;->onApplicationDisconnected(I)V

    return-void
.end method
