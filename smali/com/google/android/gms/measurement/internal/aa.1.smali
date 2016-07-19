.class final Lcom/google/android/gms/measurement/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/gms/measurement/internal/EventParcel;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/google/android/gms/measurement/internal/X;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/X;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/aa;->d:Lcom/google/android/gms/measurement/internal/X;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/aa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/aa;->b:Lcom/google/android/gms/measurement/internal/EventParcel;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/aa;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aa;->d:Lcom/google/android/gms/measurement/internal/X;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/X;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aa;->d:Lcom/google/android/gms/measurement/internal/X;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/X;->a(Lcom/google/android/gms/measurement/internal/X;)Lcom/google/android/gms/measurement/internal/S;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aa;->b:Lcom/google/android/gms/measurement/internal/EventParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V

    return-void
.end method
