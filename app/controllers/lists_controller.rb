class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def new
    @all_member_ids = Member.all
    @list = List.new
  end
  def create
    #arr_hash = Hash.new
    # arr_hash = {
    #     "27936" => 'A JUN WEI',
    #     "28027" => 'AARON T',
    #     "28014" => 'ADRIAN Z',
    #     "28088" => 'AIDIL',
    #     "27929" => 'ALFIE',
    #     "27973" => 'ALOYSIUS C',
    #     "27981" => 'ALVIN K',
    #     "28053" => 'ANDERSON P',
    #     "27889" => 'AQIL',
    #     "28020" => 'AREN S',
    #     "28060" => 'BRANNEN L',
    #     "27959" => 'BRYAN G',
    #     "27979" => 'C JIANMING',
    #     "27913" => 'C JIN CHENG',
    #     "28074" => 'C JUN YI',
    #     "27991" => 'C KAI SIANG',
    #     "28075" => 'C LEI SIONG',
    #     "113644" => 'C WEI XIAN',
    #     "28035" => 'C WEI XUN',
    #     "27884" => 'C ZHI HENG',
    #     "27965" => 'CALVIN W',
    #     "28087" => 'DALLAS C',
    #     "28038" => 'DARIUS C',
    #     "27945" => 'DARREN C',
    #     "27918" => 'DARRYL A',
    #     "27907" => 'DAVID P',
    #     "27975" => 'DEAN L',
    #     "27896" => 'DERRICK N',
    #     "27914" => 'DYLAN C',
    #     "27934" => 'EDMUND T',
    #     "27970" => 'ELLIOT O',
    #     "27949" => 'ERIC Y',
    #     "27982" => 'EUGENE L',
    #     "28066" => 'EUGENE S',
    #     "27909" => 'FADZLI',
    #     "27911" => 'FIRDAUS',
    #     "27952" => 'FRANCIS W',
    #     "27942" => 'G JIN LIANG',
    #     "28071" => 'G SATHYAN',
    #     "27940" => 'GABRIEL L',
    #     "27891" => 'GAVIN L',
    #     "28006" => 'GLENN T',
    #     "27954" => 'HARDEV S',
    #     "27921" => 'HASIF',
    #     "27882" => 'IAN TAN',
    #     "28081" => 'IAN TAY',
    #     "28039" => 'IVAN K',
    #     "28040" => 'IVAN O',
    #     "27968" => 'JAMUS A',
    #     "28045" => 'JOEL K',
    #     "28023" => 'JONAH R',
    #     "27902" => 'JONATHAN L',
    #     "27932" => 'JORDAN T',
    #     "27895" => 'JORDON P',
    #     "27865" => 'JOSHUA Y',
    #     "27893" => 'JULIAN L',
    #     "27984" => 'K HONWE',
    #     "27938" => '>KENNETH G',
    #     "27871" => 'KENNETH T',
    #     "28005" => 'KEVIN T',
    #     "28002" => 'L CHUAN ZHOU',
    #     "27977" => 'L CHUN YANG',
    #     "28076" => 'L JUN HOW',
    #     "28046" => 'L JUNHENG',
    #     "28085" => 'L KAR CHUN',
    #     "28055" => 'L YUAN SHENG',
    #     "28047" => 'L ZHENGLONG',
    #     "27872" => 'LEONEL C',
    #     "28031" => 'LESTER T',
    #     "27988" => 'LEXMOND P',
    #     "28049" => 'LUKAS S',
    #     "28024" => 'LUKE CHRISTOPHER K',
    #     "27898" => 'LUKE N',
    #     "28086" => 'MARCUS W',
    #     "27923" => 'MARTINUS L',
    #     "27901" => 'MELVIN Y',
    #     "28016" => 'N CHIN ERN',
    #     "27903" => 'N JUN XIANG',
    #     "28064" => 'NICHOLAS T',
    #     "27986" => 'NIGEL L',
    #     "27900" => 'OLIVER C',
    #     "28051" => 'PHUVADOL M',
    #     "28021" => 'RICHARD W',
    #     "28082" => 'RIGEL C',
    #     "27972" => 'RYAN W',
    #     "27927" => 'SAFWAN',
    #     "27956" => 'SVEN DRICKS C',
    #     "28091" => 'SYAKIR',
    #     "27906" => 'T CHEE RONG',
    #     "27990" => 'T EE HSIANG',
    #     "28001" => 'UNNIKRISHNAN A.NAIR',
    #     "27947" => 'VIKNESH A',
    #     "27880" => 'W TJAJA',
    #     "27863" => 'W ZEN JING',
    #     "27860" => 'WILLIAM H',
    #     "27908" => 'WILSON N',
    #     "27916" => 'XAVERN C',
    #     "28072" => 'Y CZECH GEN',
    #     "27857" => 'Y YONG JIN',
    #     "28029" => 'ZEN W',
    # }
    #
    user = Member.where(value: params[:member_id]).first
    if List.create!(name: user.name, pin_code: params[:list][:pin_code].to_i, member_id: params[:member_id], meridies: params[:meridies], process_at: Time.zone.now.yesterday)
      redirect_to root_path, success: 'Profile was successfully created.'
    end
  end
  def destroy
    l = List.find(params[:id])
    l&.destroy
    redirect_to lists_path, success: 'Profile was successfully deleted.'
  end
  def list_params
    params.require(:list).permit(:id, :name, :pin_code, :time_mode, :process_at, member_id)
  end
end
