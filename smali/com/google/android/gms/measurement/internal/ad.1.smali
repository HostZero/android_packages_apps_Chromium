.class final Lcom/google/android/gms/measurement/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/AppMetadata;

.field private synthetic b:Lcom/google/android/gms/measurement/internal/X;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/X;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ad;->b:Lcom/google/android/gms/measurement/internal/X;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ad;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ad;->b:Lcom/google/android/gms/measurement/internal/X;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/X;->a(Lcom/google/android/gms/measurement/internal/X;)Lcom/google/android/gms/measurement/internal/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ad;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
