.class Lcom/baicai/qqmod/ContactActivity$1;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/baicai/qqmod/ContactActivity;


.method constructor <init>(Lcom/baicai/qqmod/ContactActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baicai/qqmod/ContactActivity$1;->this$0:Lcom/baicai/qqmod/ContactActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/baicai/qqmod/ContactActivity$1;->this$0:Lcom/baicai/qqmod/ContactActivity;

    const-string v1, "https://ti.qq.com/card/index.html?uin=2505976626"

    invoke-static {v0, v1}, Lcom/baicai/qqmod/ContactActivity;->openUrlSafe(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
