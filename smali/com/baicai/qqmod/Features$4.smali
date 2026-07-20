.class Lcom/baicai/qqmod/Features$4;
.super Ljava/lang/Object;
.source "Features.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baicai/qqmod/Features;->buildVoiceForwardItem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clf:Ljava/lang/ClassLoader;

.field final synthetic val$comp:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 826
    iput-object p1, p0, Lcom/baicai/qqmod/Features$4;->val$comp:Ljava/lang/Object;

    iput-object p2, p0, Lcom/baicai/qqmod/Features$4;->val$clf:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 830
    :try_start_0
    iget-object v0, p0, Lcom/baicai/qqmod/Features$4;->val$comp:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baicai/qqmod/Features$4;->val$clf:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/baicai/qqmod/Features;->-$$Nest$smforwardPttFile(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    goto :goto_0

    .line 831
    :catchall_0
    move-exception v0

    .line 832
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voiceForward click err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void
.end method
